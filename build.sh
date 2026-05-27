#!/usr/bin/env bash
# Build ZMK firmware locally in Docker, mirroring the GitHub Actions build.
# All toolchain state lives in ./.build (gitignored). Artifacts land in ./firmware.
#
# Usage:
#   ./build.sh                # build piantor halves (default)
#   ./build.sh piantor        # same
#   ./build.sh corne          # build corne halves
#   ./build.sh sofle          # build sofle halves
#   ./build.sh clean          # wipe .build (forces fresh west init/update)
#   ./build.sh shell          # drop into the container for manual west commands

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$REPO_DIR/.build"
FIRMWARE_DIR="$REPO_DIR/firmware"
IMAGE="zmkfirmware/zmk-build-arm:stable"

# Pick docker or podman
if command -v docker >/dev/null 2>&1; then
    RUNTIME=docker
elif command -v podman >/dev/null 2>&1; then
    RUNTIME=podman
else
    echo "error: neither docker nor podman found" >&2
    exit 1
fi

run_in_container() {
    # $1 = command string to run inside the container.
    # Mount layout:
    #   /workspace        → .build/         (west workspace, persisted between runs)
    #   /workspace/config → ./config        (manifest project, per west.yml self.path)
    #   /repo             → repo root       (for boards/ — passed as BOARD_ROOT)
    "$RUNTIME" run --rm \
        -v "$BUILD_DIR:/workspace" \
        -v "$REPO_DIR/config:/workspace/config" \
        -v "$REPO_DIR:/repo" \
        -w /workspace \
        "$IMAGE" \
        bash -lc "$1"
}

ensure_workspace() {
    mkdir -p "$BUILD_DIR" "$FIRMWARE_DIR"
    if [ ! -d "$BUILD_DIR/.west" ]; then
        echo ">>> First-time setup: west init + west update (a few minutes)"
        run_in_container "
            set -e
            west init -l /workspace/config
            west update
            west zephyr-export
        "
    fi
}

build_one() {
    local name=$1 board=$2 shield=$3 extra_cmake=${4:-}
    echo ">>> Building $name ($board, shield=$shield)"
    run_in_container "
        set -e
        export Zephyr_DIR=/workspace/zephyr/share/zephyr-package/cmake
        west build -s zmk/app -d build/$name -p -b $board -S studio-rpc-usb-uart -- \
            -DSHIELD=$shield \
            -DZMK_CONFIG=/workspace/config \
            -DBOARD_ROOT=/repo \
            $extra_cmake
    "
    cp "$BUILD_DIR/build/$name/zephyr/zmk.uf2" "$FIRMWARE_DIR/$name.uf2"
    echo ">>> Wrote $FIRMWARE_DIR/$name.uf2"
}

build_piantor() {
    ensure_workspace
    build_one piantor_left  piantor_pro_bt_left  nice_view_disp "-DCONFIG_ZMK_STUDIO=y"
    build_one piantor_right piantor_pro_bt_right nice_view_disp ""
}

build_corne() {
    ensure_workspace
    build_one corne_left  corne_choc_pro_left  nice_view "-DCONFIG_ZMK_STUDIO=y"
    build_one corne_right corne_choc_pro_right nice_view ""
}

build_sofle() {
    ensure_workspace
    build_one sofle_left  sofle_choc_pro_left  nice_view_disp "-DCONFIG_ZMK_STUDIO=y"
    build_one sofle_right sofle_choc_pro_right nice_view_disp ""
}

case "${1:-piantor}" in
    piantor) build_piantor ;;
    corne)   build_corne ;;
    sofle)   build_sofle ;;
    clean)   rm -rf "$BUILD_DIR"; echo "wiped $BUILD_DIR" ;;
    shell)   ensure_workspace
             "$RUNTIME" run --rm -it \
                 -v "$BUILD_DIR:/workspace" \
                 -v "$REPO_DIR/config:/workspace/config" \
                 -v "$REPO_DIR:/repo" \
                 -w /workspace \
                 "$IMAGE" bash ;;
    *) echo "usage: $0 [piantor|corne|sofle|clean|shell]" >&2; exit 2 ;;
esac
