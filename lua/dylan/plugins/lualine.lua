return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			black = "#323437",
			dark = "#080808",
			cream = "#bdbdbd",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			insert = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			visual = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			command = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			replace = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			inactive = {
				a = { bg = colors.black, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat", symbols = { unix = "" } },
					{ "filetype" },
				},
			},
		})
	end,
}
