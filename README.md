<div align="center">
  <img src="SnapClip/Assets.xcassets/AppIcon.appiconset/icon_128x128.png" width="100" alt="SnapClip">
  <h1>SnapClip</h1>
  <p>Screenshot clipboard manager for macOS — lives in your menubar</p>
  <img src="https://img.shields.io/badge/macOS-14%2B-brightgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Swift-5.9-orange?style=flat-square">
  <img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square">
</div>

---

## What it does

SnapClip lives in your menubar and turns your screenshot folder into an instant clipboard.

- 📁 Watches any folder in real time (default: Screenshots folder)
- 🖱 Click any screenshot to copy it instantly
- ⌘V to paste it anywhere
- 🌙 Dark / Light / System theme toggle
- ⚡ Native SwiftUI — fast, lightweight, no Electron
- 🔒 No network access, no tracking, no ads

---

## Requirements

- macOS 14.0 (Sonoma) or later
- Xcode 15 or later (to build from source)

---

## Install

### Option 1 — Download & run (no Xcode needed)

1. Go to [Releases](https://github.com/Anbarasu-A-N/SnapClipApp/releases/latest)
2. Download `SnapClip-v1.0.0.zip`
3. Unzip it
4. Drag `SnapClip.app` into your **Applications** folder
5. **Right-click → Open** (first time only — bypasses Gatekeeper)
6. The 📷 icon appears in your menubar ✅

> ⚠️ macOS may say "unidentified developer" on first launch.
> Always use **Right-click → Open** instead of double-click the first time.
> After that, double-click works normally forever.

---

## Build from source

### Option 1 — GUI (Xcode)

1. **Clone the repo**
   - Open **Xcode**
   - Menu → **Source Control → Clone**
   - Paste: `https://github.com/Anbarasu-A-N/SnapClipApp.git`
   - Choose a folder → Click **Clone**

2. **Run the app**
   - Xcode opens automatically
   - Press **⌘R** (or click the ▶ Play button)
   - The 📷 camera icon appears in your menubar

3. **Install permanently**
   - Xcode menu → **Product → Archive**
   - Click **Distribute App → Custom → Copy App → Export**
   - Save `SnapClip.app` to Desktop
   - Drag it to **Applications** folder

---

### Option 2 — Terminal (command line)

**Step 1 — Clone**
```bash
git clone https://github.com/Anbarasu-A-N/SnapClipApp.git
cd SnapClipApp
```

**Step 2 — Open in Xcode**
```bash
open SnapClip.xcodeproj
```

**Step 3 — Build & run**
```bash
# Press ⌘R in Xcode
# OR build from terminal:
xcodebuild -project SnapClip.xcodeproj \
           -scheme SnapClip \
           -configuration Release \
           build
```

**Step 4 — Install to Applications**
```bash
# After archiving in Xcode (Product → Archive → Export):
cp -R ~/Desktop/SnapClip.app /Applications/

# Remove Gatekeeper warning
xattr -cr /Applications/SnapClip.app

# Launch
open /Applications/SnapClip.app
```

---

## Auto-start on login

To launch SnapClip automatically every time you start your Mac:

### Option 1 — System Settings (GUI)

1. Make sure SnapClip is installed in your **Applications** folder first
2. Open **System Settings** (Apple menu → System Settings)
3. Click **General** in the left sidebar
4. Click **Login Items & Extensions**
5. Under **"Open at Login"** section, click the **+** button
6. Navigate to **Applications** folder
7. Select **SnapClip** → click **Add**
8. You'll see SnapClip appear in the list ✅

From now on SnapClip starts automatically every time you log in or restart your Mac.

### Option 2 — Terminal

```bash
# Add SnapClip to login items via command line
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/SnapClip.app", hidden:false}'

echo "✓ SnapClip added to login items"
```

### Remove from login items

**GUI:**
1. System Settings → General → Login Items & Extensions
2. Select **SnapClip** in the list
3. Click the **−** minus button → it's removed

**Terminal:**
```bash
osascript -e 'tell application "System Events" to delete login item "SnapClip"'

echo "✓ SnapClip removed from login items"
```

---

## Uninstall

### Option 1 — GUI
1. Quit SnapClip (click the menubar icon → **Quit**)
2. Open **Finder → Applications**
3. Find `SnapClip` → drag to **Trash**
4. Empty Trash

### Option 2 — Terminal
```bash
# Quit the app
pkill -x SnapClip

# Remove from Applications
rm -rf /Applications/SnapClip.app

# Remove saved preferences (optional)
defaults delete com.yourname.snapclip 2>/dev/null

echo "SnapClip uninstalled"
```

---

## Update to a new version

### Option 1 — GUI
1. Download the new `SnapClip.zip` from [Releases](https://github.com/Anbarasu-A-N/SnapClipApp/releases)
2. Unzip → drag new `SnapClip.app` to Applications → click **Replace**

### Option 2 — Terminal
```bash
# Pull latest code
cd SnapClipApp
git pull origin main

# Open in Xcode and archive again
open SnapClip.xcodeproj
```

---

## Troubleshooting

| Problem | Fix |
|---|---|
| "App can't be opened" warning | Right-click → Open → Open |
| Menubar icon not showing | Check System Settings → Privacy & Security → Screen Recording |
| Screenshots not loading | Click **Change…** in the app and select your Screenshots folder |
| App not detecting new screenshots | Grant Full Disk Access: System Settings → Privacy & Security → Full Disk Access → add SnapClip |
| Black screen / crash | Run `xattr -cr /Applications/SnapClip.app` in Terminal |

---

## Privacy

SnapClip has **zero network access**. It only reads image files from the folder you choose. Nothing is uploaded, tracked, or shared. No analytics, no ads.

---

## License

MIT © 2026 Anbarasu A N

---

<div align="center">
  <p>Made with ❤️ for macOS</p>
  <a href="https://github.com/Anbarasu-A-N/SnapClipApp/issues">Report a Bug</a> · 
  <a href="https://github.com/Anbarasu-A-N/SnapClipApp/releases">Releases</a>
</div>
