return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      -- Neovim 0.11+ way to enable an LSP server
      vim.lsp.enable("solargraph")

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
      })
    end,
  }
}
