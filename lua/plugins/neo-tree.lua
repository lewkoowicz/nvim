return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
    require('neo-tree').setup({
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    })
  end
}