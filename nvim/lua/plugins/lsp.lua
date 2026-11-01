return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "solargraph", "texlab" },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Make Mason-installed servers discoverable on PATH
      vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

      -- Neovim 0.11+ way to enable an LSP server
      vim.lsp.enable("solargraph")

      -- Enable texlab for LaTeX autocompletion, diagnostics, and formatting
      vim.lsp.enable("texlab")

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
      })
    end,
  }
}
