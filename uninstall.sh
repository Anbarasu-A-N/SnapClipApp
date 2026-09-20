#!/bin/bash

# SnapClip Uninstaller

BOLD='\033[1m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo ""
echo -e "${BOLD}  SnapClip Uninstaller${NC}"
echo -e "  ─────────────────────"
echo ""

# Quit the app if running
if pgrep -x "SnapClip" > /dev/null; then
  echo "→ Quitting SnapClip..."
  pkill -x "SnapClip" || true
  sleep 1
fi

# Remove app
if [ -d "/Applications/SnapClip.app" ]; then
  rm -rf "/Applications/SnapClip.app"
  echo -e "${GREEN}✓${NC} Removed /Applications/SnapClip.app"
else
  echo "  SnapClip not found in /Applications"
fi

# Remove preferences
if [ -f "$HOME/Library/Preferences/com.yourname.snapclip.plist" ]; then
  rm "$HOME/Library/Preferences/com.yourname.snapclip.plist"
  echo -e "${GREEN}✓${NC} Removed preferences"
fi

echo ""
echo -e "${GREEN}${BOLD}  ✓ SnapClip uninstalled.${NC}"
echo ""
