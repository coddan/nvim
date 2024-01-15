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
                    "go-template",
                    "Dockerfile",
                    "c_sharp",
                    "sql",
                    "bicep",
                    "hcl",
                    "jinja2",
                    "jq",
                    "jsonnet",
                    "powershell"
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
