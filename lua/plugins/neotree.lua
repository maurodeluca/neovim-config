return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.cmd([[
               augroup OpenNeoTreeOnStartup
               autocmd!
               autocmd VimEnter * :Neotree filesystem show right
               augroup END
          ]])
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>")
	    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    end,
}
