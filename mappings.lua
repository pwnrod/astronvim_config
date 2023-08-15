-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

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
    ["n"] = { "nzzzv", desc = "next search result centered" },
    ["N"] = { "Nzzzv", desc = "prev search result centered" },
    ["<C-d>"] = { "<C-d>zz", desc = "Jump down with centered cursor" },
    ["<C-u>"] = { "<C-u>zz", desc = "Jump up with centered cursor" },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- window management
    ["<leader>w"] = { name = "Windows" },
    ["<leader>wh"] = { "<C-w>h", desc = "move left one split" },
    ["<leader>wj"] = { "<C-w>j", desc = "move down one split" }, -- move down one window
    ["<leader>wk"] = { "<C-w>k", desc = "move up one split" }, -- move up one window
    ["<leader>wl"] = { "<C-w>l", desc = "move right one split" }, -- move right one window
    ["<leader>wx"] = { ":close<CR>", desc = "close current split" }, -- close current split

    -- toggle the cursorline
    ["<leader>ue"] = { function() vim.o.cursorline = not vim.o.cursorline end, desc = "toggle cursorline" },
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
