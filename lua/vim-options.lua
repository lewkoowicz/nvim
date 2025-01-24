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
    local cwd = vim.fn.getcwd()
    local full_path = vim.fn.expand('%:p')
    local relative_path = full_path:gsub('^' .. vim.pesc(cwd) .. '/', '')
    vim.fn.setreg('+', relative_path)
    vim.notify('Copied relative path: ' .. relative_path)
end)

vim.keymap.set('n', '<leader>cpa', function()
    local path = vim.fn.expand('%:p')
    vim.fn.setreg('+', path)
    vim.notify('Copied absolute path: ' .. path)
end)

vim.keymap.set('n', '<leader>co', function()
  vim.cmd('CopilotChatOpen')
  vim.cmd('vertical resize 1000')
end)
vim.keymap.set('n', '<leader>cc', ':CopilotChatClose<CR>')

vim.keymap.set('n', '<c-/>', 'gcc', { remap = true })
vim.keymap.set('v', '<c-/>', 'gc', { remap = true })

vim.keymap.set('n', '<leader>w', ':bdelete<CR>')
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>h', ':split<CR>')

vim.keymap.set('n', '<leader>n/', ':nohlsearch<CR>')
