local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ----------- --
-- Normal mode ---
-- ----------- --
-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Window resizing 
-- vim.keymap.et('n', '<C-Left>', '<C-w><')
-- vim.keymap.et('n', '<C-Down>', '<C-w>-')
-- vim.keymap.et('n', '<C-Up>', '<C-w>+')
-- vim.keymap.et('n', '<C-Right>', '<C-w>>')

-- Static cursor while paging
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Static cursor while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to system clipboard with leader key
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Tab management
vim.keymap.set("n", "<leader>t", ":tabedit<cr>")

-- Visual mode --
-- ----------- --
-- Code block movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
