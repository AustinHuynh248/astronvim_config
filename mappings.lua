local astro_utils = require "astronvim.utils"
return {
  n = {
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
    -- better increment/decrement
    ["-"] = { "<c-x>", desc = "Descrement number" },
    ["+"] = { "<c-a>", desc = "Increment number" },
    -- this is useful for naming menus
    ["<leader>b"] = { name = " Buffers" },
    ["<leader>k"] = { "i<Enter><Esc>", desc = "down a line" },
    -- replace which key
    ["<leader>s"] = { desc = "󰛔 Search/Replace" },
    ["<leader>ss"] = { function() require("spectre").open() end, desc = "Spectre" },
    ["<leader>sf"] = { function() require("spectre").open_file_search() end, desc = "Spectre (current file)" },
    ["<leader>sw"] = {
      function() require("spectre").open_visual { select_word = true } end,
      desc = "Spectre (current word)",
    },
    -- telescope
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find project" },
    ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODOs" },
    --trouble
    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },

    -- unmap
    ["<C-s>"] = false,
    -- set CWD
    ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },

    --obsidian
    -- ["<leader>o"] = false,
    ["<leader>o"] = { false, desc = " Notes" },
    ["<leader>od"] = { "<cmd>ObsidianToday<cr>", desc = "Daily notes today" },
    ["<leader>oy"] = { "<cmd>ObsidianYesterday<cr>", desc = "Daily notes yesterday" },
    ["<leader>ot"] = { "<cmd>ObsidianTomorrow<cr>", desc = "Daily notes tommorrow" },
    ["<leader>op"] = { "<cmd>ObsidianPasteImg<cr>", desc = "Paste image from clipboard" },
    ["<leader>oc"] = { "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick switch notes" },
    ["<leader>on"] = { "<cmd>ObsidianNew<cr>", desc = "Create a new note" },
    ["<leader>oh"] = { "<cmd>ObsidianTemplate<cr>", desc = "Insert template" },
    ["<leader>oo"] = { "<cmd>ObsidianOpen<cr>", desc = "Open obsidian note" },
    ["<leader>ob"] = { "<cmd>ObsidianBacklinks<cr>", desc = "Open list back links" },
    ["<leader>of"] = { "<cmd>ObsidianSearch<cr>", desc = "Find in notes" },
  },

  -- visual mode
  v = {
    -- spectre
    ["<leader>ss"] = { function() require("spectre").open_visual() end, desc = "Spectre" },
    -- obsidian
    ["<leader>on"] = { "<cmd>ObsidianLinkNew<cr>", desc = "Create a new note" },
    ["<leader>ol"] = { "<cmd>ObsidianLink<cr>", desc = "Link to a visual selection of text" },
  },
}
