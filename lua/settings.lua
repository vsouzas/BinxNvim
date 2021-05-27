-- General configuration
vim.o.termguicolors = true
vim.o.showmode = false

-- Enable mouse support
vim.o.mouse = 'a'
vim.o.mousefocus = true

-- Enable line numbers
vim.wo.number = true

-- Set relative numbers
vim.wo.relativenumber = true

-- Used by vim-whichkey
vim.o.timeoutlen = 300

-- Update the editor more frequently
vim.o.updatetime = 100

-- Start scrolling when we are 5 lines away from margins
vim.o.scrolloff = 5

-- Disable wrapping
vim.wo.wrap = false

-- Make vim's default splitting directions something reasonable
vim.o.splitbelow = true
vim.o.splitright = true

-- Synchronize the system clipboard with neovim's
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'

-- Make sure the statusline is always shown
vim.g.laststatus = 2

-- Print shorter messages
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Stop neovim from waiting after escape has been pressed
vim.o.ttimeoutlen = 5

function on_file_enter()
	-- Set up indenting
	vim.bo.expandtab = false
	vim.bo.copyindent = true
	vim.bo.shiftwidth = 4
	vim.bo.tabstop = 4
	vim.bo.softtabstop = 4
	vim.bo.autoindent = true
	vim.bo.smartindent = true

	vim.cmd("norm '\"")
end

vim.cmd [[ autocmd FileType * :lua on_file_enter() ]]
