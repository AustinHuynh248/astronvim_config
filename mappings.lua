local astro_utils = require "astronvim.utils"
return {
  n = {
    -- better buffer navigation
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- buffer switching
    ["<Tab>"] = {
      function()
        if #vim.t.bufs > 1 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        else
          astro_utils.notify "No other buffers open"
        end
      end,
      desc = "Switch Buffers",
    },
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
    -- add telescope key
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find project" },
    ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODOs" },
    -- glow
    ["<leader>G"] = { "<cmd>Glow<cr>", desc = "  Glow Preview" },
    -- neogen
    ["<leader>a"] = { desc = "󰏫 Annotate" },
    ["<leader>a<cr>"] = { function() require("neogen").generate() end, desc = "Current" },
    ["<leader>ac"] = { function() require("neogen").generate { type = "class" } end, desc = "Class" },
    ["<leader>af"] = { function() require("neogen").generate { type = "func" } end, desc = "Function" },
    ["<leader>at"] = { function() require("neogen").generate { type = "type" } end, desc = "Type" },
    ["<leader>aF"] = { function() require("neogen").generate { type = "file" } end, desc = "File" },
    --trouble
    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },
  },
}
