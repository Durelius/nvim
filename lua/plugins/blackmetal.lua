return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.go_syntax_enabled = false
    require("black-metal").setup({
      theme = "bathory",
      highlights = {
        BlinkCmpMenu            = { fg = "#999999", bg = "#0d0d0d" },
        BlinkCmpMenuBorder      = { fg = "#e0934a", bg = "#0d0d0d" },
        BlinkCmpMenuSelection   = { fg = "#cccccc", bg = "#1a1a1a" },
        BlinkCmpDoc             = { fg = "#999999", bg = "#0d0d0d" },
        BlinkCmpDocBorder       = { fg = "#e0934a", bg = "#0d0d0d" },

        ["@keyword"]            = { fg = "#e0934a", bold = true },
        ["@conditional"]        = { fg = "#e0934a", bold = true },
        ["@repeat"]             = { fg = "#e0934a", bold = true },

        -- Functions & Methods
        ["@function"]           = { fg = "#c2c98f" },
        ["@function.call"]      = { fg = "#c2c98f" },
        ["@method"]             = { fg = "#c2c98f" },

        -- Types
        ["@type"]               = { fg = "#8fbcb3" },
        ["@class"]              = { fg = "#8fbcb3" },

        -- Variables & constants
        ["@variable"]           = { fg = "#cccccc" },
        ["@constant"]           = { fg = "#d75f5f" },

        -- Strings / Numbers / Booleans
        ["@string"]             = { fg = "#a3be8c" },
        ["@number"]             = { fg = "#d08770" },
        ["@boolean"]            = { fg = "#d08770" },

        -- Comments
        ["@comment"]            = { fg = "#7a7a7a", italic = true },

        ["@lsp.type.function"]  = { fg = "#c2c98f" },
        ["@lsp.type.method"]    = { fg = "#c2c98f" },
        ["@lsp.type.struct"]    = { fg = "#8fbcb3" },
        ["@lsp.type.interface"] = { fg = "#8fbcb3" },
        ["@lsp.type.variable"]  = { fg = "#cccccc" },
        ["@lsp.type.parameter"] = { fg = "#b48ead", italic = true },
        ["@lsp.type.property"]  = { fg = "#9fa8da" },
      },
    })

    -- 3️⃣ Load the colorscheme
    require("black-metal").load()
  end,
}
