return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({
        theme = "bathory",
        -- optional configuration here
        highlights = {
          BlinkCmpMenu = {
            fg = "#999999", -- base05
            bg = "#0d0d0d", -- base01
          },

          -- border around the menu
          BlinkCmpMenuBorder = {
            fg = "#e0934a", -- base04
            bg = "#0d0d0d", -- base01
          },

          -- selected item
          BlinkCmpMenuSelection = {
            fg = "#cccccc", -- base07
            bg = "#1a1a1a", -- base02
          },

          BlinkCmpDoc = {
            fg = "#999999", -- base05
            bg = "#0d0d0d", -- base01
          },
          BlinkCmpDocBorder = {
            fg = "#e0934a", -- base04
            bg = "#0d0d0d", -- base01
          }
        },

      })
      require("black-metal").load()
    end,
  } }
