return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local colors = {
			blue = "#458588",
			green = "#8ec07c",
			violet = "#d3869b",
			yellow = "#d8a657",
			red = "#FF4A4A",
			cream = "#EBDBB2",
			black = "#282828",
			grey = "#1d2021",
			dark = "#141617",
		}

		local gruv_material = {
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
				theme = gruv_material,
				component_separators = { left = "", right = " " },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = colors.grey },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
