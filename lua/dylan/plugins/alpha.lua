return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                                                 ",
			" ooooo      ooo oooooooooooo   .oooooo.   oooooo     oooo ooooo ooo        ooooo ",
			" `888b.     `8' `888'     `8  d8P'  `Y8b   `888.     .8'  `888' `88.       .888' ",
			"  8 `88b.    8   888         888      888   `888.   .8'    888   888b     d'888  ",
			"  8   `88b.  8   888oooo8    888      888    `888. .8'     888   8 Y88. .P  888  ",
			"  8     `88b.8   888    '    888      888     `888.8'      888   8  `888'   888  ",
			"  8       `888   888       o `88b    d88'      `888'       888   8    Y     888  ",
			" o8o        `8  o888ooooood8  `Y8bood8P'        `8'       o888o o8o        o888o ",
			"                                                                                 ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
