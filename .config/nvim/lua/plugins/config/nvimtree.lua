local present, nvimtree = pcall(require, 'nvim-tree')

if not present then
	return
end

local options = {
	filters = {
		dotfiles = false,
	},
	disable_netrw = true,
	hijack_netrw = true,
	view = {
		adaptive_size = true,
		side = 'left',
		width = 25,
		hide_root_folder = true,
	},
}

vim.g.nvimtree_side = options.view.side

nvimtree.setup(options)
