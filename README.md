# Sofle Choc Pro BT - Custom ZMK Configuration

This repository contains custom ZMK firmware configurations for the Sofle Choc Pro BT keyboard, combining premium wireless features, powerful customization, and sleek portability.

## 🔧 Building & Flashing Custom Firmware (Fedora)

### Method 1: Using GitHub Actions (Recommended)

1. **Push your changes to a branch:**
   ```bash
   git checkout -b my-custom-layout
   # Make your changes to the keymap files
   git add .
   git commit -m "Update keymap"
   git push origin my-custom-layout
   ```

2. **Download the firmware:**
   - Go to your repository on GitHub: `github.com/cmihail/zmk-config`
   - Click on "Actions" tab
   - Select the latest workflow run for your branch
   - Download the firmware artifacts (`.uf2` files)

3. **Flash the keyboard:**
   - Locate the reset button next to the USB port on the bottom of the case
   - Double-press it using a SIM card tool
   - The board will show up as a drive named `KEEBART`
   - Drag and drop the `.uf2` firmware file onto the drive
   - Done! The keyboard will reboot with your new firmware

### Method 2: Building Locally (Advanced)

If you want to build locally on Fedora:

```bash
# Install dependencies
sudo dnf install cmake ninja-build python3-pip dtc wget
pip3 install --user west

# Clone and setup ZMK (first time only)
west init -l config/
west update
west zephyr-export

# Build firmware for left side
west build -p -s zmk/app -b nice_nano_v2 -- -DSHIELD=sofle_choc_pro_bt_left -DZMK_CONFIG="$(pwd)/config"

# Build firmware for right side
west build -p -s zmk/app -b nice_nano_v2 -- -DSHIELD=sofle_choc_pro_bt_right -DZMK_CONFIG="$(pwd)/config"

# The .uf2 files will be in build/zephyr/
```

## ⚙️ Configuration Options

### Online ZMK Keymap Editor (Easiest)
👉 [nickcoutsos.github.io/keymap-editor](https://nickcoutsos.github.io/keymap-editor)

### ZMK Studio
Easy-to-use app to configure keys and settings live on the keyboard.
- **Unlock:** Press Raise layer button + B
- 👉 [zmk.studio/download](https://zmk.studio/download)

### Manual Configuration (This Repository)
For advanced users who want full control:
- Edit keymap files in `config/` directory
- Commit and push to build via GitHub Actions
- 👉 [github.com/cmihail/zmk-config](https://github.com/cmihail/zmk-config)

## 🔄 Flashing Process

1. Locate the reset button – It's next to the USB port on the bottom of the case
2. Double-press it using a SIM card tool
3. The board will show up as a drive named `KEEBART`
4. Drag and drop the new `.uf2` firmware file onto it – done!

**Note:** You need to flash both halves separately (left and right).

## 📱 Bluetooth Profiles

- The keyboard supports multiple Bluetooth profiles
- Use a new profile to pair with a new device
- Switch profiles using the BT keys in your keymap
- Switching between devices is fast and seamless once paired

## 🔋 Battery & Power Tips

### Battery Specifications
- **Max size:** 51×34×3 mm
- **Connector:** Molex Pico-Ezmate or solder directly to + and – pads

### Power Management
- **Turn off RGB LEDs** to significantly extend battery life
  (With RGB on, battery life may be only a few hours)

### On/Off Switches
Each half has a switch on the inner side:
- **OFF** (bottom position): Completely disconnect from battery
- **ON** (top position): Will go into sleep mode when idle

## 🗂️ Repository Structure

```
zmk-config/
├── config/
│   ├── sofle_choc_pro_bt.keymap    # Main keymap configuration
│   ├── sofle_choc_pro_bt.conf      # Keyboard settings
│   └── ...
├── build.yaml                       # GitHub Actions build config
└── README.md                        # This file
```

## 🌿 Branches

- `main` – Stable configuration
- `sofle-kanata-layout` – Colemak DH layout synchronized with Kanata
- Create your own branches for experimental layouts

## 🤝 Need Help?

- Join the friendly Keebart community on Discord:
  👉 [keebart.com/discord](https://keebart.com/discord)
- Questions? Reach us at:
  📧 info@keebart.com

## 📚 Additional Resources

- [ZMK Documentation](https://zmk.dev/docs)
- [ZMK Discord Community](https://zmk.dev/community/discord/invite)
- [Sofle Keyboard Info](https://josefadamcik.github.io/SofleKeyboard/)
