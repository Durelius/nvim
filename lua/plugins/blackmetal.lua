return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.go_syntax_enabled = false
    require("black-metal").setup({
      theme = "bathory",
      highlights = {
        BlinkCmpMenu          = { fg = "#999999", bg = "#0d0d0d" },
        BlinkCmpMenuBorder    = { fg = "#e0934a", bg = "#0d0d0d" },
        BlinkCmpMenuSelection = { fg = "#cccccc", bg = "#1a1a1a" },
        BlinkCmpDoc           = { fg = "#999999", bg = "#0d0d0d" },
        BlinkCmpDocBorder     = { fg = "#e0934a", bg = "#0d0d0d" },

        ["@keyword"]          = { fg = "#e0934a", bold = true },
        ["@conditional"]      = { fg = "#e0934a", bold = true },
        ["@repeat"]           = { fg = "#e0934a", bold = true },
      },
    })

    -- 3️⃣ Load the colorscheme
    require("black-metal").load()
  end,
}
