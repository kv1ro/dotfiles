return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      -- Standard way to setup an LSP server with nvim-lspconfig
      require("lspconfig").solargraph.setup({})

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
      })
    end,
  }
}
