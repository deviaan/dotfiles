-- Highlighting and file changes 
return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    branch = 'master',
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
