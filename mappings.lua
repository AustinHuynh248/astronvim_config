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
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick buffer to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = " Buffers" },
    ["<leader>k"] = { "i<Enter><Esc>", desc = "down a line" },
    -- split which key
    ["<leader>s"] = { name = "󱤗 Split" },
    ["<leader>sh"] = { "<cmd>split<cr>", desc = "split horizontal" },
    ["<leader>sv"] = { "<cmd>vsplit<cr>", desc = "split vertical" },
    -- replace which key
    ["<leader>R"] = { name = " Replace" },
    ["<leader>Rp"] = { "<cmd>lua require('spectre').open()<cr>", desc = "Replace word in project" },
    ["<leader>Rw"] = {
      "<cmd>lua require('spectre').open_visual({selected_word=true})<cr>",
      desc = "Replace visually selected word",
    },
    ["<leader>Rf"] = { "<cmd>lua require('spectre').open_file_search()<cr>", desc = "Replace word in current buffer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
