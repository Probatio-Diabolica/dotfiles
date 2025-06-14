-- lua/plugins/colorscheme.lua (or wherever you keep your plugin specs)
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000, -- load before all the other crap
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background =  false,
          highlight_overrides = {
            all = {
              LineNr = { fg = "#ffffff" }, -- Set LineNr foreground to white
            },
          },
        integrations = {
          treesitter = true,
          telescope = true,
          native_lsp = {
            enabled = true,
          },
          gitsigns = true,
          notify = true,
          cmp = true,
          which_key = true,
            -- add more integrations if you're not too lazy
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

