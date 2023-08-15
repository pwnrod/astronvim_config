return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.motion.mini-surround" },
  -- not quite ready to embrace this one yet
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
}
