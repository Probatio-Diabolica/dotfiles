return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      vim.keymap.set("n", "<F5>", function() dap.continue() end)
      vim.keymap.set("n", "<F10>", function() dap.step_over() end)
      vim.keymap.set("n", "<F11>", function() dap.step_into() end)
      vim.keymap.set("n", "<F12>", function() dap.step_out() end)
      vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end)
      vim.keymap.set("n", "<Leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio", -- 🔥 REQUIRED
    },
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = true,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("/usr/bin/python")
    end,
  },
}
