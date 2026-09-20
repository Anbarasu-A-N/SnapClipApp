<div align="center">
  <?xml version="1.0" encoding="UTF-8"?>
<svg id="Layer_9" data-name="Layer 9" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2632.18 1699.69">
  <defs>
    <style>
      .cls-1 {
        fill: #f1f2f2;
        stroke-width: 0px;
      }
    </style>
  </defs>
  <path class="cls-1" d="M2442.74,616.25c-62.41.1-118.9,25.46-159.82,66.4-40.99,41.03-66.35,97.71-66.35,160.31h-.37c0-62.6-25.35-119.28-66.35-160.31-41-41.03-97.64-66.4-160.19-66.4,62.55,0,119.18-25.37,160.19-66.4,40.99-41.03,66.35-97.7,66.35-160.31h.37c0,125.09,101.22,226.51,226.16,226.71Z"/>
  <path class="cls-1" d="M1883.49,679.22c-149.01,0-269.8,120.89-269.8,270.01s120.79,270.01,269.8,270.01,269.8-120.88,269.8-270.01-120.8-270.01-269.8-270.01ZM1883.49,1125.94c-97.52,0-176.57-79.11-176.57-176.71s79.05-176.71,176.57-176.71,176.57,79.11,176.57,176.71-79.05,176.71-176.57,176.71Z"/>
  <path class="cls-1" d="M1763.07,521.3v27.51c0,20.03-16.23,36.27-36.25,36.27h-208.25v208.26c0,20.03-16.23,36.27-36.25,36.27h-27.35c-20.02,0-36.25-16.24-36.25-36.27v-272.05c0-20.03,16.23-36.27,36.25-36.27h271.84c20.02,0,36.25,16.24,36.25,36.27Z"/>
  <path class="cls-1" d="M1763.07,1377.27v-27.51c0-20.03-16.23-36.27-36.25-36.27h-208.25v-208.26c0-20.03-16.23-36.27-36.25-36.27h-27.35c-20.02,0-36.25,16.24-36.25,36.27v272.05c0,20.03,16.23,36.27,36.25,36.27h271.84c20.02,0,36.25-16.24,36.25-36.27Z"/>
  <path class="cls-1" d="M2003.09,1377.27v-27.51c0-20.03,16.23-36.27,36.25-36.27h208.25v-208.26c0-20.03,16.23-36.27,36.25-36.27h27.35c20.02,0,36.25,16.24,36.25,36.27v272.05c0,20.03-16.23,36.27-36.25,36.27h-271.84c-20.02,0-36.25-16.24-36.25-36.27Z"/>
</svg>
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
