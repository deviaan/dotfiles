require("config.lazy")
require("tokyonight")

--      Basic Vim Settings  --
-- Clipboard
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Display
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true

-- Searching
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Theme
vim.cmd("colorscheme tokyonight-night")

--          Key maps        --
-- Better Movement
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")

-- LSP
vim.keymap.set("n", "P", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Debugging
local dap = require("dap")

vim.keymap.set('n', '<F5>', dap.continue, {})
vim.keymap.set('n', '<F8>', dap.step_over, {})
vim.keymap.set('n', '<F7>', dap.step_into, {})
vim.keymap.set('n', '<S-F8>', dap.step_out, {})
vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, {})
