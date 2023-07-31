return {
  "rcarriga/nvim-notify",
  opts = {
    background_color = "none",
  },
  config = function()
    require("notify").setup {
      background_colour = "none",
    }
  end,
}
