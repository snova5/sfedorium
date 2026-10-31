#!/bin/sh
# Installs the `sfedorium` command for the current user (no sudo needed).
#   curl -fsSL https://raw.githubusercontent.com/snova5/sfedorium/main/install.sh | sh
set -e

BIN="$HOME/.local/bin"
URL="https://raw.githubusercontent.com/snova5/sfedorium/main/sfedorium"

if ! command -v python3 >/dev/null 2>&1; then
    echo "sfedorium needs Python 3. Install it first (Fedora: sudo dnf install python3)."
    exit 1
fi

mkdir -p "$BIN"
DIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd || true)"
if [ -n "$DIR" ] && [ -f "$DIR/sfedorium" ]; then
    cp "$DIR/sfedorium" "$BIN/sfedorium"          # run from a git clone
else
    curl -fsSL "$URL" -o "$BIN/sfedorium"          # run through curl | sh
fi
chmod +x "$BIN/sfedorium"

case ":$PATH:" in
    *":$BIN:"*) echo "Installed! Run: sfedorium" ;;
    *)
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
        echo "Installed! Open a new terminal, then run: sfedorium"
        ;;
esac
