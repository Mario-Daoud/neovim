return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- lua
                null_ls.builtins.formatting.stylua,

                -- js ts
                null_ls.builtins.formatting.prettier,

                -- go
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.goimports_reviser,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>cf", vim.lsp.buf.format, {})
    end,
}
