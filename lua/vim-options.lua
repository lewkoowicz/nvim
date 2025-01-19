vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.number = true

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<c-d>', '<c-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>cp', function()
    local path = vim.fn.expand('%:p')
    vim.fn.setreg('+', path)
    vim.notify('Copied path: ' .. path)
end)

vim.keymap.set('n', '<leader>co', ':CopilotChatOpen<CR>')
vim.keymap.set('n', '<leader>cc', ':CopilotChatClose<CR>')

vim.keymap.set('n', '<c-/>', 'gcc', { remap = true })
vim.keymap.set('v', '<c-/>', 'gc', { remap = true })

vim.keymap.set('n', '<leader>w', ':bdelete<CR>', {})
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = 'Horizontal split' })
