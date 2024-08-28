-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	name = "kanagawa",
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			theme = "wave",
-- 			background = {
-- 				dark = "wave",
-- 				light = "lotus",
-- 			},
-- 		})
--
-- 		vim.cmd([[colorscheme kanagawa]])
-- 	end,
-- }

-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			require("catppuccin").setup({
-- 				flavour = "mocha",
-- 				default_integrations = true,
-- 				term_colors = true,
-- 				integrations = {
-- 					cmp = true,
-- 					gitsigns = true,
-- 					nvimtree = true,
-- 					treesitter = true,
-- 				},
-- 			})
--
-- 			vim.cmd([[colorscheme catppuccin-mocha]])
-- 		end,
-- 	},
-- }
--
-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     vim.cmd[[colorscheme tokyonight-moon]]
--   end
-- }

return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  lazy = false,
  priority = 1000,
  opts = {

  },
  config = function()
    vim.o.background = "dark"
    vim.cmd[[colorscheme gruvbox]]
  end
}

