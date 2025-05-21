return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.clangd.setup({ capabilities = capabilities })
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.bashls.setup({ capabilities = capabilities })
    lspconfig.jdtls.setup({ capabilities = capabilities })
  end,
}

