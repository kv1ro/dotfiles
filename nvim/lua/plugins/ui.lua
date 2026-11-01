return {
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup({ options = { theme = 'auto' } })
    end
  },
  {
    "monochrome-colorscheme",
    dir = vim.fn.stdpath("config") .. "/lua/monochrome",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd[[colorscheme monochrome]]
    end,
  },
}
