# M9RG's Neovim Configuration

A modular Neovim configuration written in Lua, designed for a modern development workflow.

Built with **Neovim 0.12+** and **lazy.nvim**, featuring LSP support, autocompletion, syntax highlighting, file navigation, and a customizable interface.

## Features

- **Plugin management:** lazy.nvim
- **LSP:** Language Server Protocol support through nvim-lspconfig and Mason
- **Autocompletion:** nvim-cmp with LuaSnip
- **Syntax highlighting:** nvim-treesitter
- **Fuzzy finder:** Telescope
- **File explorer:** NvimTree
- **Buffer management:** Barbar
- **Statusline:** Lualine
- **Colorscheme:** Vague
- **Java development:** Eclipse JDT Language Server (jdtls)

## Requirements

- Neovim 0.12+
- Git
- Make
- A C compiler
- Ripgrep
- Tree-sitter CLI
- Curl
- tar
- JDK 21 or newer for the Java language server

The Java language server requires Java 21 or newer to run. Java projects can target different Java versions, provided the appropriate JDK is configured.

## Installation

Clone the repository into your Neovim configuration directory:

```bash
git clone https://github.com/m9rgana/nvim.git ~/.config/nvim
```

Start Neovim. lazy.nvim will automatically install the configured plugins.

## Plugins

| Plugin | Purpose |
|---|---|
| lazy.nvim | Plugin manager |
| nvim-treesitter | Syntax highlighting |
| nvim-lspconfig | LSP configuration |
| mason.nvim | Language server installer |
| mason-lspconfig.nvim | Mason and LSP integration |
| nvim-cmp | Autocompletion |
| LuaSnip | Snippet engine |
| Telescope | Fuzzy finder |
| NvimTree | File explorer |
| Barbar | Buffer management |
| Lualine | Statusline |
| Vague | Colorscheme |

Additional dependencies include Plenary, nvim-web-devicons, telescope-fzf-native, and the nvim-cmp completion sources.

## Supported Languages

The configuration includes the following language servers:

| Language | Language Server |
|---|---|
| Lua | lua_ls |
| Python | pyright |
| Rust | rust_analyzer |
| Go | gopls |
| C / C++ | clangd |
| CSS | cssls |
| Java | jdtls |

Java support uses Eclipse JDT Language Server, providing diagnostics, completion, code navigation, and support for Maven and Gradle projects.

Tree-sitter is configured for syntax highlighting in Lua, Vim, JavaScript, TypeScript, Python, Rust, Go, Java, HTML, CSS, JSON, YAML, TOML, Markdown, and Bash.

## Keybindings

The leader key is `Space`.

### General

| Key | Action |
|---|---|
| `Space + w` | Save file |

### Telescope

| Key | Action |
|---|---|
| `Space + ff` | Find files |
| `Space + fg` | Live grep |
| `Space + fb` | Find buffers |
| `Space + fh` | Find help |

### File Explorer

| Key | Action |
|---|---|
| `Space + e` | Toggle file explorer |
| `Space + fe` | Focus file explorer |

### Barbar

| Key | Action |
|---|---|
| `Tab` | Next buffer |
| `Shift + Tab` | Previous buffer |
| `Space + bd` | Close buffer |

### LSP

| Key | Action |
|---|---|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Hover documentation |
| `Ctrl + k` | Signature help |
| `Space + rn` | Rename symbol |
| `Space + ca` | Code action |
| `Space + lf` | Format buffer |

## Configuration Structure

```text
~/.config/nvim/
├── init.lua
└── lua/
    ├── options.lua
    ├── keymaps.lua
    ├── pluginManager.lua
    └── plugins/
        ├── barbar.lua
        ├── completion.lua
        ├── explorer.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── telescope.lua
        ├── theme.lua
        └── treesitter.lua
```

## Useful Commands

| Command | Description |
|---|---|
| `:Lazy` | Open plugin manager |
| `:Lazy sync` | Install and update plugins |
| `:Lazy update` | Update plugins |
| `:Mason` | Open language server manager |
| `:TSUpdate` | Update Tree-sitter parsers |

## License

This repository contains my personal Neovim configuration. Individual plugins retain their respective licenses.
