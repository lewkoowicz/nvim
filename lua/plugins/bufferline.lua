return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            separator = true,
            highlight = "Directory",
          }
        }
      }
    })
    
    vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>', {})
    vim.keymap.set('n', '<leader>w', ':bdelete<CR>', {})
    vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })
  end
}
