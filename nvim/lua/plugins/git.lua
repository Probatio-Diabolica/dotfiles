return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" }, -- lazy-load only when needed
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- lazy-load
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "-" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = vim.keymap.set

          -- Keymaps (you can change these)
          map("n", "]c", gs.next_hunk, { buffer = bufnr })
          map("n", "[c", gs.prev_hunk, { buffer = bufnr })
          map("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr })
          map("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr })
          map("n", "<leader>hb", function() gs.blame_line({ full = true }) end, { buffer = bufnr })
        end,
      })
    end,
  },

  {
    "ldelossa/gh.nvim", -- optional GitHub integration
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gh").setup()
    end,
    cmd = { "GH", "GHOpenPR", "GHIssues" },
  },
}

