#!/bin/bash

# Install all WordPress VS Code plugins from plugins.json

echo "Installing WordPress development VS Code plugins..."

# Read plugin IDs from plugins.json and install each one
cat plugins.json | grep '"id":' | sed 's/.*"id": "\(.*\)",/\1/' | while read -r plugin_id; do
    echo "Installing $plugin_id..."
    code --install-extension "$plugin_id"
done

echo "All plugins installed successfully!"
