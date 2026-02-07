#!/bin/bash

# Define the required version and download URL
HUGO_VERSION="0.127.0"
HUGO_BINARY_NAME="hugo"
INSTALL_DIR="$(pwd)/bin"
HUGO_ARCHIVE="hugo_extended_${HUGO_VERSION}_darwin-universal.tar.gz"
DOWNLOAD_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ARCHIVE}"

# Ensure the bin directory exists
mkdir -p "$INSTALL_DIR"

# Function to check current version
check_version() {
  if [ -f "$INSTALL_DIR/$HUGO_BINARY_NAME" ]; then
    CURRENT_VERSION=$("$INSTALL_DIR/$HUGO_BINARY_NAME" version | grep -o "v${HUGO_VERSION}")
    if [ "$CURRENT_VERSION" == "v${HUGO_VERSION}" ]; then
      echo "✅ Hugo v${HUGO_VERSION} is already installed in $INSTALL_DIR"
      return 0
    fi
  fi
  return 1
}

if check_version; then
  echo "Run the server with:"
  echo "  export PATH=\"$INSTALL_DIR:\$PATH\""
  echo "  hugo server"
  exit 0
fi

echo "⬇️  Downloading Hugo v${HUGO_VERSION}..."
curl -L "$DOWNLOAD_URL" -o "/tmp/$HUGO_ARCHIVE"

if [ $? -ne 0 ]; then
    echo "❌ Download failed."
    exit 1
fi

echo "📦 Extracting..."
tar -xzf "/tmp/$HUGO_ARCHIVE" -C "$INSTALL_DIR"
rm "/tmp/$HUGO_ARCHIVE"

# Cleanup extra files from extraction
rm -f "$INSTALL_DIR/LICENSE" "$INSTALL_DIR/README.md"

echo "✅ Hugo v${HUGO_VERSION} installed successfully to $INSTALL_DIR/hugo"
echo ""
echo "🚀 To start the server, run:"
echo ""
echo "  export PATH=\"$INSTALL_DIR:\$PATH\""
echo "  hugo server"
echo ""
