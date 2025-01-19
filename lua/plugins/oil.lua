return {
  'stevearc/oil.nvim',
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("oil").setup({
      keymaps = {
        ["g."] = { "actions.toggle_hidden", mode = "n" }
      }
    })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}
