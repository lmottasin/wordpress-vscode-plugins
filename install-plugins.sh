#!/bin/bash

set -e  # Exit on error

# Install all WordPress VS Code plugins from plugins.json

# Check if VS Code CLI is available
if ! command -v code &> /dev/null; then
    echo "Error: VS Code CLI 'code' command not found."
    echo ""
    echo "Please install the VS Code CLI command first."
    echo "See the Prerequisites section in README.md for installation instructions."
    echo ""
    echo "Quick setup:"
    echo "  - macOS: Open VS Code > Cmd+Shift+P > 'Shell Command: Install code command in PATH'"
    echo "  - Windows: Reinstall VS Code with 'Add to PATH' option"
    echo "  - Linux: Check README.md for distribution-specific instructions"
    exit 1
fi

echo "Installing WordPress development VS Code plugins..."

# Read plugin IDs from plugins.json and install each one
grep '"id":' plugins.json | sed 's/.*"id": "\(.*\)".*/\1/' | while read -r plugin_id; do
    echo "Installing $plugin_id..."
    code --install-extension "$plugin_id" || echo "Warning: Failed to install $plugin_id"
done

echo "Plugin installation complete!"
