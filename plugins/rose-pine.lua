return {
  "rose-pine",
  opts = {
    disable_float_background = true,
    disable_background = true,
    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
      -- Blend colours against the "base" background
      CursorLine = { bg = "foam", blend = 10 },
      String = { fg = "text" },
    },
  },
}
