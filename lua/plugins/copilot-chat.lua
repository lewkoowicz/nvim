return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" },
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  config = function()
    require("CopilotChat").setup({
      window = {
        layout = "float"
      }
    })
  end
}
