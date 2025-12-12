# Sofle Choc ZMK Keymap Layout

Complete visual reference for all keyboard layers and rotary encoder functions.

## BASE Layer (Default)
Colemak DH layout matching Kanata configuration with home row mods
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  [  │  1  │  2  │  3  │  4  │  5  │                │  6  │  7  │  8  │  9  │  0  │  ]  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  =  │  Q  │  W  │  F  │  P  │  B  │                │  J  │  L  │  U  │  Y  │  ;  │  -  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  `  │  A  │  R  │S/ALT│T/CTL│  G  │                │  M  │N/CTL│E/ALT│  I  │  O  │  '  │
│     │     │     │     │     │     │                │     │     │     │     │     │     │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│SHIFT│  Z  │  X  │  C  │  D  │  V  │  │MUTE││MUTE│  │  K  │  H  │  ,  │  .  │  /  │SHIFT│
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │ VOL││ BRI│  ├─────┼─────┼─────┼─────┼─────┐
      │  \  │CTRL │ESC/ │ TAB/│SPC/ │  │    ││    │  │RET/ │BKSPC│ DEL │ ALT │SLEEP│
      │     │     │RAISE│SHIFT│LOW  │  │    ││    │  │LOW  │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = Volume -/+        Press = Volume Mute
  Right: Rotate = Brightness -/+    Press = Mic Mute

Home Row Mods:
  S/ALT:  Tap for S, Hold (300ms) for Alt
  T/CTL:  Tap for T, Hold (250ms) for Ctrl
  N/CTL:  Tap for N, Hold (250ms) for Ctrl
  E/ALT:  Tap for E, Hold (300ms) for Alt
```

## LOWER Layer (Hold Space)
Colemak DH positions: Super+letter keys follow the Colemak DH layout with home row mods preserved
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  X  │LG(1)│LG(2)│LG(3)│LG(4)│LG(5)│                │LG(6)│LG(7)│LG(8)│LG(9)│LG(0)│  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │LG(Q)│LG(W)│LG(F)│LG(P)│LG(B)│                │PGUP │HOME │  ↑  │ END │PGDN │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │LG(A)│LG(R)│LGS/ │LGT/ │LG(G)│                │C-S-T│  ←  │  ↓  │  →  │C-TAB│  X  │
│     │     │     │ ALT │ CTL │     │                │ AB  │     │     │     │     │     │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│SHIFT│LG(Z)│LG(X)│LG(C)│LG(D)│LG(V)│  │PLAY││PLAY│  │  '  │  "  │  `  │  ~  │  X  │SHIFT│
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │ MED││ MED│  ├─────┼─────┼─────┼─────┼─────┐
      │  X  │CTRL │LG   │ TAB │ SPC │  │    ││    │  │S-RET│BKSPC│ DEL │ ALT │  X  │
      │     │     │(ESC)│     │     │  │    ││    │  │     │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = Media Prev/Next       Press = Play/Pause
  Right: Rotate = Media Prev/Next       Press = Play/Pause

Home Row Mods (preserved from BASE layer):
  LGS/ALT: Tap for Super+S, Hold (300ms) for Alt
  LGT/CTL: Tap for Super+T, Hold (250ms) for Ctrl

Legend:
  LG(X) = Super/Win + X
  C-S-TAB = Ctrl+Shift+Tab (previous tab)
  C-TAB = Ctrl+Tab (next tab)

Note: Holding both Lower and Raise layers simultaneously activates the ADJUST layer automatically.
```

## RAISE Layer (Hold Raise)
Number row: Function keys F1-F10 (columns 2-11)
QWERTY row: Symbols !@#$%^&*()
Home row: Numbers 1234567890
Bottom row: Brackets and symbols \, [, ], =, +, -, _, {, }, |
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  X  │ F1  │ F2  │ F3  │ F4  │ F5  │                │ F6  │ F7  │ F8  │ F9  │ F10 │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │  !  │  @  │  #  │  $  │  %  │                │  ^  │  &  │  *  │  (  │  )  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │  1  │  2  │  3  │  4  │  5  │                │  6  │  7  │  8  │  9  │  0  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│SHIFT│  \  │  [  │  ]  │  =  │  +  │  │ OFF││ ON │  │  -  │  _  │  {  │  }  │  |  │SHIFT│
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │RGB ││RGB │  ├─────┼─────┼─────┼─────┼─────┐
      │  X  │CTRL │  X  │  X  │  X  │  │ SPD││ BRI│  │  X  │BKSPC│ DEL │ ALT │  X  │
      │     │     │     │     │     │  │    ││    │  │     │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = RGB Speed -/+         Press = RGB Off
  Right: Rotate = RGB Brightness -/+    Press = RGB On

Note: Holding both Lower and Raise layers simultaneously activates the ADJUST layer automatically.
```

## ADJUST Layer (Hold both LOWER + RAISE)
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  X  │  X  │  X  │  X  │  X  │  X  │                │  X  │  X  │  X  │  X  │  X  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │CA-F1│CA-F2│CA-F3│CA-F4│CA-F5│                │CA-F6│CA-F7│CA-F8│CA-F9│CAF10│  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │ CLR │BT_2 │BT_1 │BT_0 │  X  │                │  X  │DSC0 │DSC1 │DSC2 │CLALL│  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │BOOT │RESET│O_BLE│O_USB│  X  │  │EFR ││EFF │  │  X  │O_USB│O_BLE│RESET│BOOT │  X  │
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │RGB ││RGB │  ├─────┼─────┼─────┼─────┼─────┐
      │  X  │CTRL │  X  │  X  │  X  │  │ EFF││ EFF│  │  X  │  X  │  X  │ ALT │  X  │
      │     │     │     │     │     │  │    ││    │  │     │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = RGB Effect -/+        Press = RGB Effect -
  Right: Rotate = RGB Effect -/+        Press = RGB Effect +

Legend:
  CA-FX = Ctrl+Alt+FX (for Hyprland workspace switching)
```

---

## Legend

### Bluetooth Controls (ADJUST Layer)
- **BT_0-2**: Select Bluetooth profile 0-2
- **CLR**: Clear current BT profile
- **DSC0-2**: Put BT profile 0-2 in discovery mode
- **CLALL**: Clear all BT profiles

### Output Selection (ADJUST Layer)
- **O_USB**: Switch output to USB
- **O_BLE**: Switch output to Bluetooth

### Power & System Controls (ADJUST Layer)
- **RESET**: System reset (available on both left and right sides - operates per keyboard half)
- **BOOT**: Enter bootloader mode for firmware updates (available on both left and right sides - operates per keyboard half)

### Modifier Keys
- **LG(X)**: Super/Win + X (workspace/app shortcuts)
- **ESC/RAISE**: Tap for Esc, Hold for Raise layer (left thumb position 3)
- **TAB/SHIFT**: Tap for Tab, Hold for Shift (left thumb position 4)
- **SPC/LOW**: Tap for Space, Hold for Lower layer (available on both left and right thumb)
- **Home Row Mods**: S/E=Alt (300ms), T/N=Ctrl (250ms)

### RGB Controls
- **RGBT**: RGB Toggle on/off
- **RGB BRI**: RGB Brightness control
- **RGB SPD**: RGB Effect speed
- **RGB EFF**: RGB Effect cycling (on rotary encoder buttons in ADJUST layer)

### Layer Summary
- **BASE**: Colemak DH layout with home row mods (S/T=Alt/Ctrl on left, N/E=Ctrl/Alt on right) + ESC/RAISE tap-hold + TAB/SHIFT tap-hold + RET/LOWER tap-hold + volume/brightness control
- **LOWER**: Super+key shortcuts (left) following Colemak DH layout with home row mods preserved (S/T still have Alt/Ctrl hold) + SUPER+ESC on grave position + navigation cluster (right: YUIO=pgup/home/up/end, MH=Ctrl+Shift+Tab, NJKL=left/down/right, O=Ctrl+Tab, ;=pgdn) + quote symbols (', ", `, ~) + media controls + maintains CTRL, TAB, and explicit SPACE in left thumb cluster + Shift+Return and ALT in right thumb cluster
- **RAISE**: F-keys F1-F10 (columns 2-11) + symbols (!@#$%^&*()) + numbers (1234567890) + brackets/symbols (\, [, ], =, +, -, _, {, }, |) + CTRL and ALT in thumb cluster + RGB speed/brightness + on/off
- **ADJUST**: Ctrl+Alt+F1-F10 keys (for Hyprland workspace switching) + Bluetooth management + RGB effect cycling (via rotary encoder buttons) + on/off + system controls + CTRL and ALT maintained in thumb cluster (automatically accessible via: Lower+Raise conditional layers)
