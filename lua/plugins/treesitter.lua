return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {
                    "lua",
                    "rust",
                    "ron",
                    "toml",
                    "json",
                    "jsonc",
                    "python",
                    "bash",
                    "vim",
                    "gitignore",
                    "yaml",
                    "markdown",
                    "go",
                    "dockerfile",
                    "c_sharp",
                    "sql",
                    "bicep",
                    "hcl",
                    "jq",
                    "jsonnet"
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
