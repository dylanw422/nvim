-- KANAGAWA
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	name = "kanagawa",
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			theme = "wave",
-- 		})
-- 		vim.cmd([[colorscheme kanagawa-wave]])
-- 	end,
-- }

-- CATPPUCCIN MOCHA
-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			require("catppuccin").setup({
-- 				flavour = "mocha",
-- 			})
-- 			vim.cmd([[colorscheme catppuccin]])
-- 		end,
-- 	},
-- }

-- TOKYONIGHT MOON
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd([[colorscheme tokyonight-moon]])
-- 	end,
-- }

--GRUVBOX
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.o.background = "dark"
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }

-- DARCULA / JETBRAINS
-- return {
-- 	{
-- 		"doums/darcula",
-- 		name = "darcula",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.cmd([[colorscheme darcula]])
-- 		end,
-- 	},
-- }
--
-- MOONFLY
return {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme moonfly]])
	end,
}
