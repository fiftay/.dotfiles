return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()

        local telescope = require("telescope")
        local themes = require("telescope.themes")
        local builtin = require("telescope.builtin")

        telescope.setup({
            extensions = {
                ["ui-select"] = { themes.get_dropdown() }
            }
        })
        telescope.load_extension("ui-select")

        local normal_mode = {
            ["<leader>fb"] = builtin.buffers,
            ["<leader>fc"] = function() 
                local config_path = vim.fn.stdpath("config")
                builtin.find_files({ cwd = config_path })
            end,
            ["<leader>fd"] = builtin.diagnostics,
            ["<leader>ff"] = builtin.find_files,
            ["<leader>fg"] = builtin.live_grep,
            ["<leader>fh"] = builtin.help_tags,
            ["<leader>fr"] = builtin.oldfiles,
        }

        for k,v in pairs(normal_mode) do
            vim.keymap.set('n', k, v, {})
        end
    end
}
