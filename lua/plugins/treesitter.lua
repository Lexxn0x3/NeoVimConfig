return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"lua", "rust", "json", "c_sharp", "cpp", "go", "html", "java", "javascript", "json", "latex", "python"},
			highlight = { enable = true},
			indent = {enable = true}
		})
	end
}
