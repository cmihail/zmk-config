# Piantor Pro BT - Custom ZMK Configuration

This repository contains a custom ZMK firmware configuration for the Piantor Pro BT keyboard with Colemak DH layout, home row mods, and mouse support.

## Features

### Layout
- **Colemak DH** base layer with optimized home row modifications
- **Home row mods** with balanced flavor and cross-hand activation
  - Left hand: R=Alt, S=Super, T=Ctrl
  - Right hand: N=Ctrl, E=Super, I=Alt
- **4 layers**: Default, Lower (nav/media/mouse), Raise (numbers/symbols), Adjust (BT/RGB/system)

### Hardware Features
- **Mouse emulation** with movement, clicks, and scrolling
- **Battery reporting** from both keyboard halves
- **3 BLE profiles** for easy device switching
- **RGB controls** for brightness, speed, effects, hue, and saturation

## Downloading Firmware

### From GitHub Actions
1. Go to the [Actions tab](../../actions/workflows/build.yml) of this repository
2. Click on the latest successful build for the `piantor-layout-5-col` branch
3. Download the `firmware` artifact
4. Extract the `.zip` file to find:
   - `nice_view-piantor_pro_bt_left-zmk.uf2` (for left half)
   - `nice_view-piantor_pro_bt_right-zmk.uf2` (for right half)

## Flashing on Fedora

### Prerequisites
```bash
# Ensure your user has access to USB devices
sudo usermod -aG dialout $USER
# Log out and log back in for group changes to take effect
```

### Flashing Steps

**Important**: Each half has its own firmware file and must be flashed separately.

#### Flashing the LEFT half

1. **Enter bootloader mode on the LEFT half**
   - Locate the reset button on the bottom of the keyboard (next to one of the four screws)
   - Double-press it using a SIM card tool or paperclip
   - The keyboard will appear as a USB mass storage device named `KEEBART`

2. **Flash the LEFT firmware**
   ```bash
   # Mount and copy in one command
   udisksctl mount -b /dev/disk/by-label/KEEBART && cp ~/Downloads/firmware/nice_view-piantor_pro_bt_left-zmk.uf2 /run/media/$USER/KEEBART/

   # The keyboard will automatically reboot after copying
   ```

#### Flashing the RIGHT half

3. **Enter bootloader mode on the RIGHT half**
   - Disconnect the LEFT half
   - Double-press the reset button on the RIGHT half
   - The keyboard will appear as a USB mass storage device named `KEEBART`

4. **Flash the RIGHT firmware**
   ```bash
   # Mount and copy in one command
   udisksctl mount -b /dev/disk/by-label/KEEBART && cp ~/Downloads/firmware/nice_view-piantor_pro_bt_right-zmk.uf2 /run/media/$USER/KEEBART/

   # The keyboard will automatically reboot after copying
   ```

### Troubleshooting

- **Device not appearing**: Try a different USB cable or port
- **Permission denied**: Ensure you're in the `dialout` group and have logged out/in
- **Mount fails**: Check if device is detected with `lsblk`, or try mounting with `udisksctl mount -b /dev/sdX1` (replace X with actual device letter)
- **Device already mounted**: If you get "already mounted" error, the command will still work - the cp will proceed

## Keymap Overview

### Default Layer (Colemak DH)
```
Q  W  F  P  B       J  L  U  Y  ;
A  R  S  T  G       M  N  E  I  O
Z  X  C  D  V       K  H  ,  .  /
DEL SFT/RET BSPC    TAB/RSE SPC/LWR ESC
```

### Lower Layer (Navigation & Mouse)
- **w/r/s/t**: Mouse left click, mouse left/down/right
- **f**: Mouse up
- **p**: Mouse right click
- **b/g**: Scroll left/right
- **j/m**: Scroll up/down
- **Navigation**: Home, arrow keys, End
- **Media**: Volume, brightness, play/pause controls

### Raise Layer (Numbers & Symbols)
- **Top row**: ! @ # $ %    ^ & * ( )
- **Home row**: 1-5 with mods    6-0 with mods
- **Bottom row**: \ [ ] = +    - _ { } |

### Adjust Layer (Bluetooth & System)
- **BT profiles**: Select (0-2), Clear, Disconnect
- **RGB**: Brightness, Speed, Effects, Hue, Saturation, On/Off
- **System**: Reset, Bootloader, USB/BLE output selection
- **Shortcuts**: Ctrl+Alt+F1-F4

## Bluetooth Pairing

### Initial Pairing
1. Turn on the keyboard using the switch on the inner side of each half
2. The keyboard will be in pairing mode automatically
3. On your device, search for Bluetooth devices and select "Piantor Pro BT"

### Switching Profiles
- Access the Adjust layer (hold both raise and lower keys)
- Press keys corresponding to BT SEL 0, BT SEL 1, or BT SEL 2
- Current profile will be shown on the nice!view display (if equipped)

### Profile Management
- **Clear current profile**: BT_CLR on Adjust layer
- **Clear all profiles**: BT_CLR_ALL on Adjust layer
- **Disconnect profile**: BT_DISC 0/1/2 on Adjust layer

## Battery & Power Management

### Battery Specifications
- **Maximum size**: 51×34×3 mm
- **Connector**: Molex Pico-Ezmate or solder directly to +/- pads

### Power Tips
- Turn off RGB LEDs to significantly extend battery life
- With RGB on, battery life may be only a few hours
- Each half has an ON/OFF switch on the inner side:
  - **OFF** (bottom position): Completely disconnects from battery
  - **ON** (top position): Keyboard enters sleep mode when idle

### Battery Status
- Battery level is displayed on the nice!view screen (if equipped)
- Battery reporting is enabled from both halves

## Configuration Tools

### ZMK Studio (Recommended)
- Download: [zmk.studio/download](https://zmk.studio/download)
- Easy-to-use app to configure keys and settings
- Press the STUDIO UNLOCK key on the Adjust layer to unlock

### Online Keymap Editor
- URL: [nickcoutsos.github.io/keymap-editor](https://nickcoutsos.github.io/keymap-editor)
- Browser-based editor for quick changes

### Building Custom Firmware
This repository is based on the [Keebart zmk-config](https://github.com/Keebart/zmk-config) 5-col branch.

To modify the configuration:
1. Fork this repository
2. Edit `config/piantor_pro_bt.keymap` and `config/piantor_pro_bt.conf`
3. Push changes to trigger GitHub Actions build
4. Download the firmware artifact from the Actions tab

## Important Notes

### After Enabling Mouse Support
When you first flash firmware with mouse support enabled, you **must remove and re-pair** your keyboard with all Bluetooth hosts.
This is necessary because the HID report descriptor changes to include mouse functionality.

### Home Row Mods
The home row mods are configured with:
- **Balanced flavor** for reliable tap/hold detection
- **Cross-hand activation** to prevent accidental triggers
- **Timing**: 280ms tapping term, 175ms quick tap, 150ms prior idle requirement

## License

This configuration is based on ZMK Firmware, licensed under the MIT License.
