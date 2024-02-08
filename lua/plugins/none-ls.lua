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

				-- rust
				null_ls.builtins.diagnostics.rust_analyzer,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>cf", vim.lsp.buf.format, {})
	end,
}
