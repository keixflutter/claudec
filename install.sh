#!/bin/sh
# Install claudec into ~/.local/bin.
set -e
[ "$(uname)" = Darwin ] || { echo "claudec needs macOS (it stores logins in the Keychain)" >&2; exit 1; }
command -v python3 >/dev/null || { echo "python3 is required" >&2; exit 1; }
DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.local/bin"
cp "$DIR/claudec" "$HOME/.local/bin/claudec"
chmod +x "$HOME/.local/bin/claudec"
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) echo "Add ~/.local/bin to your PATH." ;; esac
echo "Installed: ~/.local/bin/claudec"
