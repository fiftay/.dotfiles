local options = {
    clipboard = "unnamedplus",
    colorcolumn = "100",
    cursorline = true,
    expandtab = true,
    fileencoding = "utf-8",
    ignorecase = true,
    inccommand = "split",
    list = true,
    listchars = { trail = "." },
    number = true,
    relativenumber = true,
    scrolloff = 999,
    signcolumn = "yes",
    shiftwidth = 4,
    smartcase = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    tabstop = 4,
    termguicolors = true,
    virtualedit = "block",
    wrap = false
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
