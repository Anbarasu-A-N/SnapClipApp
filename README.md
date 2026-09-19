<div align="center">
  <h1>📷 SnapClip</h1>
  <p>Screenshot clipboard manager for macOS — lives in your menubar</p>
  <img src="https://img.shields.io/badge/macOS-14%2B-brightgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Swift-5.9-orange?style=flat-square">
  <img src="https://img.shields.io/badge/free-no%20App%20Store-blue?style=flat-square">
</div>

---

## Install — one command

```bash
curl -fsSL https://raw.githubusercontent.com/Anbarasu-A-N/SnapClipApp/main/install.sh | bash
```

That's it. SnapClip downloads, installs to `/Applications`, and launches automatically.

---

## Or install manually

1. Download **SnapClip.zip** from [Releases](../../releases/latest)
2. Unzip → drag **SnapClip.app** to your **Applications** folder
3. Double-click **SnapClip.app** to run
4. If macOS blocks it: **right-click → Open → Open**
5. The 📷 icon appears in your menubar

---

## What it does

- 📁 Watches any folder in real time (default: Screenshots folder)
- 🖱 **Click any screenshot** to copy it instantly
- ⌘ **Cmd+Click** to add/remove individual screenshots from your selection
- ⇧ **Shift+Click** to select a range of screenshots at once
- 📋 All selected screenshots are copied together — paste them anywhere with ⌘V
- 🌙 Dark / Light / System theme
- ⚡ Native SwiftUI — fast, no Electron, no bloat
- 🔒 No network access, no tracking

---

## Multi-selection

Select multiple screenshots to copy them all at once:

| Action | Result |
|---|---|
| Click | Select single screenshot |
| ⌘ + Click | Add or remove a screenshot from the selection |
| ⇧ + Click | Select a contiguous range from the last-clicked item |
| ⌘V | Paste all selected screenshots |

When more than one screenshot is selected, the header shows **"N copied · ready"** and the pasteboard contains all selected files — drop them into Slack, Mail, Finder, or anywhere that accepts multiple images.

---

## Auto-start on login

After installing, go to:
**System Settings → General → Login Items → + → SnapClip**

---

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/Anbarasu-A-N/SnapClipApp/main/uninstall.sh | bash
```

Or just drag `/Applications/SnapClip.app` to Trash.

---

## Build from source

```bash
git clone https://github.com/Anbarasu-A-N/SnapClipApp.git
cd SnapClipApp
open SnapClip.xcodeproj
# Press ⌘R in Xcode
```

**Requirements:** macOS 14+, Xcode 15+

---

## Release a new version

```bash
git add . && git commit -m "Release v1.0.1"
git tag v1.0.1
git push origin main --tags
```

GitHub Actions builds the DMG and attaches it to the release automatically.

---

## Privacy

No network access. Reads only the folder you choose. Nothing uploaded or tracked.

---

## License

MIT © 2026 Anbarasu A N
