return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard", 
        transparent_mode = true,
        italic = {
          strings = true,
          comments = true,
        },
      })
      vim.cmd[[colorscheme gruvbox]]
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup({ options = { theme = 'gruvbox' } })
    end
  },
}
