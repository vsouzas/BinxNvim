-- Inserting a new task
vim.cmd('nmap <C-S> <Plug>BujoAddnormal')
vim.cmd('imap <C-S> <Plug>BujoAddinsert')

-- Checking of a task
vim.cmd('nmap <C-Q> <Plug>BujoChecknormal')
vim.cmd('imap <C-Q> <Plug>BujoCheckinsert')

-- Todo window width
vim.cmd('let g:bujo#window_width = 65')
