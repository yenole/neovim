return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "go" })
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "goimports", "gopls", "delve" })
        end,
    },

    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            vim.notify()
            table.insert(opts.sources, require("null-ls.nvim").builtins.formatting.goimports)
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gopls = {
                    keys = {
                        {
                            "<leader>dr",
                            function()
                                require("dap").continue()
                            end,
                            desc = "Run (Go)",
                        },
                    },
                },
            },
        },
    },
    {
        "mfussenegger/nvim-dap",
        opts = function(_, _)
            local dap = require("dap")
            dap.adapters.go = dap.adapters.delve
            require("dap.ext.vscode").load_launchjs()
        end,
    },
}
