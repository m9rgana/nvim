# M9RG's Neovim Configuration

A modular and customized Neovim configuration built with **Neovim 0.12**, **Lua**, and **lazy.nvim**.

This repository contains my personal Neovim setup, designed to provide a productive development environment with LSP support, autocompletion, syntax highlighting, file navigation, and a customized interface.

## Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Plugins](#plugins)
- [Keybindings](#keybindings)
- [Language Server Protocol](#language-server-protocol)
- [Configuration Structure](#configuration-structure)
- [Plugin Management](#plugin-management)

---

## Features

- Modular configuration written in Lua.
- Lazy plugin management through `lazy.nvim`.
- Language Server Protocol (LSP) integration.
- Autocompletion with `nvim-cmp`.
- Syntax highlighting through Tree-sitter.
- File navigation with Telescope and NvimTree.
- Buffer management with Barbar.
- Custom statusline powered by Lualine.
- Custom color scheme using Vague.
- Automatic LSP server installation through Mason.

---

## Requirements

Make sure the following dependencies are installed:

| Requirement | Purpose |
|---|---|
| Neovim 0.12+ | Editor |
| Git | Plugin installation |
| Make | Building native plugins |
| C compiler | Compiling native extensions |
| Ripgrep | Telescope live grep |
| Tree-sitter CLI | Tree-sitter parser management |
| Curl and tar | Tree-sitter installation requirements |

Some plugins and language servers may require additional dependencies.

---

## Installation

### 1. Clone the repository

Back up your existing Neovim configuration if necessary, then clone this repository:

```bash
git clone https://github.com/m9rgana/nvim.git ~/.config/nvim
```

### 2. Launch Neovim

```bash
nvim
```

On the first launch, the configuration bootstraps `lazy.nvim` automatically if it is not already installed.

### 3. Install plugins

Inside Neovim, execute:

```vim
:Lazy sync
```

This installs the plugins specified in the configuration.

### 4. Install language servers

Mason handles the installation of the configured language servers.

Open Neovim and execute:

```vim
:Mason
```

The configured servers are:

- Lua LS
- Pyright
- Rust Analyzer
- Gopls
- Clangd
- CSS Language Server

---

## Plugins

The following plugins are used throughout this configuration.

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP server configurations |
| [Mason.nvim](https://github.com/mason-org/mason.nvim) | LSP server and tool installation |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Mason and LSP integration |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [Barbar.nvim](https://github.com/romgrk/barbar.nvim) | Buffer management |
| [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [Vague.nvim](https://github.com/vague-theme/vague.nvim) | Color scheme |
| [Which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding discovery |
| [Gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration |

Additional dependencies include Plenary, nvim-web-devicons, Telescope's fzf-native extension, and the nvim-cmp completion sources.

---

## Keybindings

The leader key is set to **Space**.

### General

| Keybinding | Action |
|---|---|
| `Space + w` | Save current file |

### Telescope

| Keybinding | Action |
|---|---|
| `Space + ff` | Find files |
| `Space + fg` | Live grep |
| `Space + fb` | Find open buffers |
| `Space + fh` | Search help tags |

### File Explorer

| Keybinding | Action |
|---|---|
| `Space + e` | Toggle file explorer |
| `Space + fe` | Focus file explorer |

### Barbar — Buffer Navigation

| Keybinding | Action |
|---|---|
| `Tab` | Next buffer |
| `Shift + Tab` | Previous buffer |
| `Space + bd` | Close current buffer |

### LSP

| Keybinding | Action |
|---|---|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Show hover documentation |
| `Ctrl + k` | Show signature help |
| `Space + rn` | Rename symbol |
| `Space + ca` | Show code actions |
| `Space + lf` | Format current buffer |

---

## Language Server Protocol

This configuration uses Neovim's native LSP API:

- `vim.lsp.config()` for configuring language servers.
- Mason for installing language servers.
- Mason-LSPConfig for automatic server enabling.
- nvim-cmp for completion capabilities.

The following language servers are configured:

| Language | Language Server |
|---|---|
| Lua | lua_ls |
| Python | pyright |
| Rust | rust_analyzer |
| Go | gopls |
| C / C++ | clangd |
| CSS | cssls |

---

## Configuration Structure

The configuration is organized into separate files to keep it readable and maintainable.

```text
nvim/
├── init.lua
└── lua/
    ├── options.lua
    ├── keymaps.lua
    ├── pluginManager.lua
    └── plugins/
        ├── completion.lua
        ├── explorer.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── telescope.lua
        ├── theme.lua
        └── treesitter.lua
```

### Core files

- `init.lua`: Main entry point of the configuration.
- `options.lua`: General Neovim settings.
- `keymaps.lua`: General keybindings.
- `pluginManager.lua`: Lazy.nvim bootstrap and plugin management.

### Plugin specifications

Each file inside `lua/plugins/` contains the specification and configuration for an individual plugin or related functionality.

This modular structure makes it easier to maintain, extend, and customize the configuration.

---

## Plugin Management

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins.

Useful commands:

| Command | Description |
|---|---|
| `:Lazy` | Open the plugin manager |
| `:Lazy sync` | Install, update, and clean plugins |
| `:Lazy update` | Update installed plugins |
| `:Lazy clean` | Remove unused plugins |
| `:Lazy check` | Check for plugin updates |
| `:Mason` | Open the Mason interface |
| `:checkhealth` | Check Neovim health |

---

## License

This repository contains my personal Neovim configuration. Individual plugins retain their respective licenses.
