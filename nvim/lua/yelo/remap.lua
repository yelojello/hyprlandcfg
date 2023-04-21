vim.cmd([[

	noremap <space> za
	nnoremap H gT
	nnoremap L gt
	nnoremap <leader>; ;
	map ; :
	map <Leader> <Plug>(easymotion-prefix)

	let &t_SI = "\e[3 q"
	let &t_EI = "\e[5 q"

]])

-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-s>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
