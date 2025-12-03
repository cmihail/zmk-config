# Sofle Choc ZMK Keymap Layout

Complete visual reference for all keyboard layers and rotary encoder functions.

## BASE Layer (Default)
Tarmak Stage 1b: e→j, k→e, n→k, j→n, h→m, m→h
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  `  │  1  │  2  │  3  │  4  │  5  │                │  6  │  7  │  8  │  9  │  0  │  -  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│ TAB │  Q  │  W  │  J  │  R  │  T  │                │  Y  │  U  │  I  │  O  │  P  │BKSPC│
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│ ESC │  A  │  S  │  D  │  F  │  G  │                │  M  │  N  │  E  │  L  │  ;  │  '  │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│SHIFT│  Z  │  X  │  C  │  V  │  B  │  │MUTE││MUTE│  │  K  │  H  │  ,  │  .  │  /  │SHIFT│
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │ VOL││ BRI│  ├─────┼─────┼─────┼─────┼─────┐
      │LG(L)│ ALT │CTRL │  =  │SPC/ │  │    ││    │  │ENT/L│ DEL │  [  │  ]  │ \/R │
      │/RAIS│     │     │     │LOW  │  │    ││    │  │OW   │     │     │     │ AIS │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = Volume -/+        Press = Volume Mute
  Right: Rotate = Brightness -/+    Press = Mic Mute
```

## LOWER Layer (Hold Space or Enter)
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│LG(`)│LG(1)│LG(2)│LG(3)│LG(4)│LG(5)│                │LG(6)│LG(7)│LG(8)│LG(9)│LG(0)│LG(-)│
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│LGTAB│LG(Q)│LG(W)│LG(E)│LG(R)│LG(T)│                │PGUP │HOME │  ↑  │ END │  X  │BKSPC│
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │LG(A)│LG(S)│LG(D)│LG(F)│LG(G)│                │PGDN │  ←  │  ↓  │  →  │  X  │ DEL │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│SHIFT│LG(Z)│LG(X)│LG(C)│LG(V)│LG(B)│  │PLAY││PLAY│  │  X  │  X  │  X  │  X  │  X  │SHIFT│
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │ MED││ MED│  ├─────┼─────┼─────┼─────┼─────┐
      │  X  │ ALT │CTRL │  X  │LOW  │  │    ││    │  │SFT+ │  X  │  X  │  X  │  X  │
      │     │     │     │     │     │  │    ││    │  │ RET │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = Media Prev/Next       Press = Play/Pause
  Right: Rotate = Media Prev/Next       Press = Play/Pause

Legend: LG(X) = Super/Win + X
```

## RAISE Layer (Hold Sleep/Raise or \/Raise)
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│ F1  │ F2  │ F3  │ F4  │ F5  │ F6  │                │ F7  │ F8  │ F9  │ F10 │ F11 │ F12 │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │  X  │  X  │  X  │  X  │  X  │                │  X  │  X  │  X  │  X  │  X  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │  X  │  X  │  X  │  X  │  X  │                │  X  │  X  │  X  │  X  │  X  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│  X  │  X  │  X  │  X  │  X  │  X  │  │ OFF││ ON │  │  X  │  X  │  X  │  X  │  X  │  X  │
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │RGB ││RGB │  ├─────┼─────┼─────┼─────┼─────┐
      │RAIS │ ALT │CTRL │  X  │  X  │  │ SPD││ BRI│  │  X  │  X  │  X  │  X  │RAIS │
      │     │     │     │     │     │  │    ││    │  │     │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = RGB Speed -/+         Press = RGB Off
  Right: Rotate = RGB Brightness -/+    Press = RGB On
```

## ADJUST Layer (Hold both LOWER + RAISE)
```
┌─────┬─────┬─────┬─────┬─────┬─────┐                ┌─────┬─────┬─────┬─────┬─────┬─────┐
│  X  │  X  │  X  │  X  │  X  │  X  │                │  X  │  X  │  X  │  X  │  X  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│ CLR │BT_4 │BT_3 │BT_2 │BT_1 │BT_0 │                │DSC0 │DSC1 │DSC2 │DSC3 │DSC4 │CLALL│
├─────┼─────┼─────┼─────┼─────┼─────┤                ├─────┼─────┼─────┼─────┼─────┼─────┤
│O_USB│O_BLE│  X  │  X  │  X  │EFREV│                │EFFWD│  X  │  X  │  X  │  X  │  X  │
├─────┼─────┼─────┼─────┼─────┼─────┤  ┌────┐┌────┐  ├─────┼─────┼─────┼─────┼─────┼─────┤
│BOOT │RESET│  X  │  X  │  X  │  X  │  │ OFF││ ON │  │  X  │  X  │  X  │  X  │RESET│BOOT │
└─────┴─────┼─────┼─────┼─────┼─────┤  │ ◄─►││◄─► │  ├─────┼─────┼─────┼─────┼─────┴─────┘
      ┌─────┼─────┼─────┼─────┼─────┤  │RGB ││RGB │  ├─────┼─────┼─────┼─────┼─────┐
      │  X  │  X  │  X  │  X  │  X  │  │ HUE││ SAT│  │  X  │  X  │  X  │  X  │  X  │
      │     │     │     │     │     │  │    ││    │  │     │     │     │     │     │
      └─────┴─────┴─────┴─────┴─────┘  └────┘└────┘  └─────┴─────┴─────┴─────┴─────┘

Encoders:
  Left:  Rotate = RGB Hue -/+           Press = RGB Off
  Right: Rotate = RGB Saturation -/+    Press = RGB On
```

---

## Legend

### Bluetooth Controls (ADJUST Layer)
- **BT_0-4**: Select Bluetooth profile 0-4
- **CLR**: Clear current BT profile
- **DSC0-4**: Put BT profile 0-4 in discovery mode
- **CLALL**: Clear all BT profiles

### Output Selection (ADJUST Layer)
- **O_USB**: Switch output to USB
- **O_BLE**: Switch output to Bluetooth

### Power & System Controls (ADJUST Layer)
- **RESET**: System reset (available on both left and right sides - operates per keyboard half)
- **BOOT**: Enter bootloader mode for firmware updates (available on both left and right sides - operates per keyboard half)

### Modifier Keys
- **LG(X)**: Super/Win + X (workspace/app shortcuts)
- **LG(L)/RAIS**: Tap for Super+L (lock screen), Hold for Raise layer
- **SPC/LOW**: Tap for Space, Hold for Lower layer
- **ENT/LOW**: Tap for Enter, Hold for Lower layer
- **\/RAIS**: Tap for \, Hold for Raise layer

### RGB Controls
- **RGBT**: RGB Toggle on/off
- **RGB BRI**: RGB Brightness control
- **EFREV**: RGB Effect reverse (previous effect)
- **EFFWD**: RGB Effect forward (next effect)
- **RGB SPD**: RGB Effect speed
- **RGB HUE**: RGB Hue (color selection)
- **RGB SAT**: RGB Saturation (color intensity)

### Layer Summary
- **BASE**: Standard typing + volume/brightness control
- **LOWER**: Super+key shortcuts (left) + navigation cluster (right: YUIO=pgup/home/up/end, HJKL=pgdn/left/down/right) + media controls
- **RAISE**: F-keys + RGB speed/brightness + on/off
- **ADJUST**: Bluetooth management + RGB color/effects (hue/saturation/effect cycling) + on/off + system controls
