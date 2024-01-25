return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local custom_header = {
			"                                                     ",
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
			"                                                     ",
		}

		dashboard.section.header.val = custom_header

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC f f", "  > Find file", ":Telescope find_files<CR>"),
			dashboard.button("CTRL n", "  > File tree", ":Neotree<CR>"),
			dashboard.button("SPC f g", "  > Find word", ":lcd %:p:h | Telescope live_grep<CR>"),
			dashboard.button("SPC f o", "󰈢  > Recently opened files", ":lcd %:p:h | Telescope oldfiles<CR>"),
			dashboard.button("SPC p", "󰂖  > Plugins", ":Lazy<CR>"),
			dashboard.button("SPC q", "󰅚  > Quit NVIM", ":qa<CR>"),
		}

		alpha.setup(dashboard.config)

		dashboard.section.header.opts.hl = "Include"

		local function footer()
			-- local datetime = os.date("  %d-%m-%Y   %H:%M")
			-- local version = vim.version()
			-- local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
			-- local quote = '\n \n "𝙇𝙞𝙫𝙚 𝙩𝙤 𝙨𝙚𝙚 𝙖𝙣𝙤𝙩𝙝𝙚𝙧 𝙙𝙖𝙮..."'
			-- return datetime .. nvim_version_info .. '\n' .. quote
			return '"𝙇𝙞𝙫𝙚 𝙩𝙤 𝙨𝙚𝙚 𝙖𝙣𝙤𝙩𝙝𝙚𝙧 𝙙𝙖𝙮..."'
		end
		-- dashboard.section.footer.val = footer()
		-- dashboard.section.footer.opts.hl = "Type"
        -- dashboard.section.footer.opts.position = "center"

        dashboard.opts.opts.noautocmd = true
	end,
}
