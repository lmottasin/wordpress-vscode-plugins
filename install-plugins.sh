#!/bin/bash

set -e  # Exit on error

# Install all WordPress VS Code plugins from plugins.json

# Check if VS Code CLI is available
if ! command -v code &> /dev/null; then
    echo "Error: VS Code CLI 'code' command not found."
    echo "Please make sure VS Code is installed and the 'code' command is in your PATH."
    exit 1
fi

echo "Installing WordPress development VS Code plugins..."

# Read plugin IDs from plugins.json and install each one
grep '"id":' plugins.json | sed 's/.*"id": "\(.*\)".*/\1/' | while read -r plugin_id; do
    echo "Installing $plugin_id..."
    code --install-extension "$plugin_id" || echo "Warning: Failed to install $plugin_id"
done

echo "Plugin installation complete!"
