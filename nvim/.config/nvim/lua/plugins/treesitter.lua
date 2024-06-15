return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            auto_install = true,
            ensure_installed = { 
                "bash",
                "c",
                "css",
                "go",
                "haskell",
                "html",
                "java",
                "javascript",
                "json",
                "lua",
                "python",
                "query",
                "rust",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
            },
            highlight = { enabled = true },
            indent = { enable = true },
        })
    end
}
