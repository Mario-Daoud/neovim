return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle left <CR>', {})
        vim.keymap.set('n', '<leader>h', ':Neotree <CR>', {})
        vim.keymap.set('n', '<leader>gs', ':Neotree float git_status git_base=main<CR>')

        require('neo-tree').setup({
            window = {
                mappings = {
                    ["h"] = "close_node",
                    ["l"] = "open"
                }
            }
        })
    end
}
