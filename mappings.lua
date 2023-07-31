-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local mark = require "harpoon.mark"
local ui = require "harpoon.ui"

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["L"] = false,
    ["H"] = false,
    ["<S-l>"] = {
      ":bnext<cr>",
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      ":bprev<cr>",
      desc = "Prev buffer",
    },
    -- ["n"] = { "nzzzv", desc = "next search result centered" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- harpoon
    ["<leader>a"] = { mark.add_file, desc = "Add a harpoon mark" },
    ["<C-e>"] = { ui.toggle_quick_menu, desc = "Harpoon quick menu" },
    ["<C-j>"] = { function() ui.nav_file(1) end, desc = "Jump to the first harpoon mark" },
    ["<c-k>"] = { function() ui.nav_file(2) end, desc = "Jump to the second harpoon mark" },
    ["<c-l>"] = { function() ui.nav_file(3) end, desc = "Jump to the third harpoon mark" },
    ["<c-;>"] = { function() ui.nav_file(4) end, desc = "jump to the fourth harpoon mark" },

    -- window management
    ["<leader>wh"] = { "<C-w>h" }, -- move left one window
    ["<leader>wj"] = { "<C-w>j" }, -- move down one window
    ["<leader>wk"] = { "<C-w>k" }, -- move up one window
    ["<leader>wl"] = { "<C-w>l" }, -- move right one window
    ["<leader>wx"] = { ":close<CR>" }, -- close current split
  },
  v = {
    ["<S-k>"] = ":m '<-2<cr>gv=gv",
    ["<S-j>"] = ":m '>+1<cr>gv=gv",
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
