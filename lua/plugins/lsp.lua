return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      vim.lsp.enable("solargraph")

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
      })
    end,
  }
}
