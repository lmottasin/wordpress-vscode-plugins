# wordpress-vscode-plugins
Curated WordPress development VS Code plugin list for reuse

## Prerequisites

Before using the installation script, you need to have the VS Code command line interface (`code` command) available in your PATH.

### Installing the `code` command

**On macOS:**
1. Open VS Code
2. Press `Cmd+Shift+P` to open the Command Palette
3. Type "shell command" and select "Shell Command: Install 'code' command in PATH"

**On Windows:**
- The `code` command is automatically added to your PATH during VS Code installation
- If not available, reinstall VS Code and ensure "Add to PATH" is checked during installation

**On Linux:**
- If you installed VS Code via snap: `sudo snap alias code.code code`
- If you installed via .deb or .rpm: the `code` command should be automatically available
- Manual installation: Add VS Code to your PATH by adding this to your `~/.bashrc` or `~/.zshrc`:
  ```bash
  export PATH="$PATH:/path/to/VSCode/bin"
  ```

To verify the `code` command is installed:
```bash
code --version
```

## Installation

Install all plugins with one command:

```bash
./install-plugins.sh
```

## Plugin List

The `plugins.json` file contains a curated list of essential VS Code extensions for WordPress development:

### PHP Development
- **PHP Debug** (xdebug.php-debug) - Debug PHP code with Xdebug
- **PHP Intelephense** (bmewburn.vscode-intelephense-client) - PHP language support
- **PHP DocBlocker** (neilbrayfield.php-docblocker) - Generate PHP docblocks
- **PHP Sniffer** (wongjn.php-sniffer) - PHP code sniffer integration
- **PHPUnit** (recca0120.vscode-phpunit) - PHPUnit test runner

### WordPress Development
- **WordPress Hooks IntelliSense** (johnbillion.vscode-wordpress-hooks) - WordPress hooks autocomplete
- **WordPress Toolbox** (wordpresstoolbox.wordpress-toolbox) - WordPress development tools
- **WooCommerce Snippets** (claudiosanches.woocommerce) - WooCommerce code snippets

### JavaScript/Frontend
- **ESLint** (dbaeumer.vscode-eslint) - JavaScript linting
- **Prettier** (esbenp.prettier-vscode) - Code formatter
- **Prettier ESLint** (rvest.vs-code-prettier-eslint) - Prettier + ESLint integration
- **Tailwind CSS IntelliSense** (bradlc.vscode-tailwindcss) - Tailwind CSS support
- **Auto Close Tag** (formulahendry.auto-close-tag) - Auto close HTML/XML tags
- **Auto Rename Tag** (formulahendry.auto-rename-tag) - Auto rename paired tags

### Testing & Debugging
- **Playwright Test** (ms-playwright.playwright) - End-to-end testing

### Utilities
- **Code Spell Checker** (streetsidesoftware.code-spell-checker) - Spell checking
- **Markdown Mermaid** (bierner.markdown-mermaid) - Mermaid diagrams in markdown
- **YAML** (redhat.vscode-yaml) - YAML language support
- **Live Share** (ms-vsliveshare.vsliveshare) - Real-time collaboration

## Manual Installation

You can also install plugins individually using:

```bash
code --install-extension <plugin-id>
```

Plugin IDs are available in the `plugins.json` file.
