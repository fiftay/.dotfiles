local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazy_path_missing = not vim.loop.fs_stat(lazy_path)

if lazy_path_missing then
    local lazy_repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazy_path})
end

vim.opt.rtp:prepend(lazy_path)
require("lazy").setup({})
