return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "ruby", "typescript", "javascript", "html" },
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
