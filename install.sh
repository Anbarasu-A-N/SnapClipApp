#!/bin/bash

# SnapClip Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/YOURNAME/snapclip/main/install.sh | bash

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
BOLD='\033[1m'

REPO="YOURNAME/snapclip"
APP_NAME="SnapClip"
MIN_MACOS="14.0"

echo ""
echo -e "${BOLD}  SnapClip Installer${NC}"
echo -e "  Screenshot Clipboard Manager for macOS"
echo -e "  ─────────────────────────────────────"
echo ""

# ── Check macOS version ──
MACOS_VERSION=$(sw_vers -productVersion)
MACOS_MAJOR=$(echo "$MACOS_VERSION" | cut -d. -f1)
if [ "$MACOS_MAJOR" -lt 14 ]; then
  echo -e "${RED}✗ Requires macOS 14.0 or later. You have $MACOS_VERSION${NC}"
  exit 1
fi
echo -e "${GREEN}✓${NC} macOS $MACOS_VERSION"

# ── Check architecture ──
ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
  echo -e "${GREEN}✓${NC} Apple Silicon (arm64)"
else
  echo -e "${GREEN}✓${NC} Intel (x86_64)"
fi

# ── Get latest release download URL ──
echo ""
echo -e "${BLUE}→${NC} Fetching latest release..."

LATEST=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" 2>/dev/null)
VERSION=$(echo "$LATEST" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
DOWNLOAD_URL=$(echo "$LATEST" | grep '"browser_download_url"' | grep '\.zip"' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$DOWNLOAD_URL" ]; then
  echo -e "${RED}✗ Could not find download URL. Check: https://github.com/${REPO}/releases${NC}"
  exit 1
fi

echo -e "${GREEN}✓${NC} Found $APP_NAME $VERSION"

# ── Download ──
TMP_DIR=$(mktemp -d)
ZIP_PATH="$TMP_DIR/SnapClip.zip"

echo -e "${BLUE}→${NC} Downloading $APP_NAME $VERSION..."
curl -fsSL --progress-bar "$DOWNLOAD_URL" -o "$ZIP_PATH"
echo -e "${GREEN}✓${NC} Downloaded"

# ── Unzip ──
echo -e "${BLUE}→${NC} Extracting..."
unzip -q "$ZIP_PATH" -d "$TMP_DIR"
APP_PATH=$(find "$TMP_DIR" -name "*.app" -maxdepth 2 | head -1)

if [ -z "$APP_PATH" ]; then
  echo -e "${RED}✗ Could not find .app in download${NC}"
  rm -rf "$TMP_DIR"
  exit 1
fi
echo -e "${GREEN}✓${NC} Extracted $APP_NAME.app"

# ── Remove old version if exists ──
if [ -d "/Applications/$APP_NAME.app" ]; then
  echo -e "${YELLOW}→${NC} Removing old version..."
  rm -rf "/Applications/$APP_NAME.app"
fi

# ── Install to Applications ──
echo -e "${BLUE}→${NC} Installing to /Applications..."
cp -R "$APP_PATH" "/Applications/$APP_NAME.app"

# ── Remove quarantine (bypass Gatekeeper) ──
echo -e "${BLUE}→${NC} Removing quarantine flag..."
xattr -cr "/Applications/$APP_NAME.app" 2>/dev/null || true
echo -e "${GREEN}✓${NC} Installed to /Applications/$APP_NAME.app"

# ── Clean up ──
rm -rf "$TMP_DIR"

# ── Launch ──
echo ""
echo -e "${BLUE}→${NC} Launching $APP_NAME..."
open "/Applications/$APP_NAME.app"

echo ""
echo -e "${GREEN}${BOLD}  ✓ SnapClip installed successfully!${NC}"
echo ""
echo -e "  The ${BOLD}camera icon${NC} should now appear in your menubar."
echo -e "  Click it to see your screenshot history."
echo ""
echo -e "  To add to Login Items (auto-start on boot):"
echo -e "  System Settings → General → Login Items → add SnapClip"
echo ""
echo -e "  To uninstall:"
echo -e "  ${YELLOW}rm -rf /Applications/SnapClip.app${NC}"
echo ""
