-- Key maps for plugins, loads after main  keymaps 
-- Neotree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>')

-- Telescope
local telescope = require('telescope')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Search help' })
vim.keymap.set('n', '<leader>fr', telescope.extensions.recent_files.pick, { desc = 'Recent files' })

-- lsp
vim.keymap.set('n', 'P', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set({ 'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'format code' })
