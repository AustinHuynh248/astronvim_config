return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "sopa0/telescope-makefile",
    "ahmedkhalf/project.nvim",
  },
  config = function(...)
    require "plugins.configs.telescope"(...)
    local telescope = require "telescope"
    telescope.load_extension "make"
    telescope.load_extension "projects"
  end,
}
