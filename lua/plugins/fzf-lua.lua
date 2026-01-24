return {{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  keys = {
      { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find [F]iles" },
      { "<leader><leader>", function() require("fzf-lua").buffers() end, desc = "Find Buffers" },
      { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Find [G]rep" },
      { "<leader>fr", function() require("fzf-lua").registers() end, desc = "Find [R]egisters" },
      { "<leader>fh", function() require("fzf-lua").help_tags() end, desc = "Find [H]elp" },
      { "<leader>fc", function() require("fzf-lua").colorschemes() end, desc = "Find [C]olorscheme" },
      { "ga", function() require("fzf-lua").lsp_code_actions() end, desc = "GoTo [A]ctions" },
      { "gd", function() require("fzf-lua").lsp_definitions() end, desc = "GoTo [D]efinitions" },
      { "gD", function() require("fzf-lua").lsp_declarations() end, desc = "GoTo [D]eclarations" },
      { "gi", function() require("fzf-lua").lsp_implementations() end, desc = "GoTo [I]mplementations" },
      { "gr", function() require("fzf-lua").lsp_references() end, desc = "GoTo [R]eferences" },
      { "gt", function() require("fzf-lua").lsp_typedefs() end, desc = "GoTo [T]ype Definitions" },
      { "gA", function() require("fzf-lua").diagnostics_document() end, desc = "GoTo Di[a]gnostics" },
    },
  opts = {}
  ---@diagnostic enable: missing-fields
}}
