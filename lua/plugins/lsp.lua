return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },

        config = function()
            -- LSP capabilities
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities()

            -- LSP attachment
            local on_attach = function(_, bufnr)
                local opts = {
                    buffer = bufnr,
                    silent = true,
                }

                vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

                -- Navigation
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
                    buffer = bufnr,
                    desc = "Go to declaration",
                })

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                    buffer = bufnr,
                    desc = "Go to definition",
                })

                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
                    buffer = bufnr,
                    desc = "Go to implementation",
                })

                vim.keymap.set("n", "gr", vim.lsp.buf.references, {
                    buffer = bufnr,
                    desc = "Find references",
                })

                -- Documentation
                vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                    buffer = bufnr,
                    desc = "Hover documentation",
                })

                vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {
                    buffer = bufnr,
                    desc = "Signature help",
                })

                -- Code actions
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
                    buffer = bufnr,
                    desc = "Rename symbol",
                })

                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
                    buffer = bufnr,
                    desc = "Code action",
                })

                -- Formatting
                vim.keymap.set("n", "<leader>lf", function()
                    vim.lsp.buf.format({ async = true })
                end, {
                    buffer = bufnr,
                    desc = "Format buffer",
                })
            end

            -- Servers
            local servers = {
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "gopls",
                "clangd",
                "cssls",
                "java_language_server",
            }

            -- Configure servers
            for _, server in ipairs(servers) do
                vim.lsp.config(server, {
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end
            -- Lua-specific configuration
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })

            -- Mason
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })

            require("mason-lspconfig").setup({
                ensure_installed = servers,
                automatic_enable = true,
            })

            -- Diagnostics
            vim.diagnostic.config({
                virtual_text = {
                    prefix = "●",
                    source = "if_many",
                },
                float = {
                    source = "always",
                    border = "rounded",
                },
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })
        end,
    },
}

