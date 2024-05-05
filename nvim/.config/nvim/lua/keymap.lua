local opts = { noremap = true, silent = true }


local normal_mode = {
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",
    ["<leader>fe"] = vim.cmd.Ex,
    ["<leader>s"] = ":w<CR>:so %<CR>",
}

for k,v in pairs(normal_mode) do
    vim.keymap.set("n", k, v, opts)
end


local insert_mode = {
    ["jk"] = "<ESC>",
}

for k,v in pairs(insert_mode) do
    vim.keymap.set("i", k, v, opts)
end


local visual_mode = {
    ["jk"] = "<ESC>",
    ["<"] = "<gv",
    [">"] = ">gv",
    ["<C-r>"] = ":sort!<CR>",
    ["<C-s>"] = ":sort<CR>",
    ["J"] = ":move '>+1<CR>gv",
    ["K"] = ":move '<-2<CR>gv",
}

for k,v in pairs(visual_mode) do
    vim.keymap.set("v", k, v, opts)
end

