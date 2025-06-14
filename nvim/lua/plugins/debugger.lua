return {
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, config = true },
  { "theHamsta/nvim-dap-virtual-text", config = true },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("~/.local/bin/python") -- Adjust if using venv
    end,
  },
}

