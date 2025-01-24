return {
	{
		"milanglacier/minuet-ai.nvim",
		config = function()
			require("minuet").setup({
				provider = "openai_fim_compatible",
				provider_options = {
					api_key = "TERM",
					name = "Ollama",
					end_point = "http://localhost:11434/v1/completions",
					model = "deepseek-coder:6.7b",
				},
			})
		end,
	},
	{ "nvim-lua/plenary.nvim" },
	{ "hrsh7th/nvim-cmp" },
}
