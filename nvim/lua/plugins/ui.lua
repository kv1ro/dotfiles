-- habamax is a built-in Neovim colorscheme (bundled since 0.8), not a plugin.
-- Apply it here (non-spec code) instead of managing it via lazy.nvim.
vim.o.background = "dark"
vim.cmd("colorscheme habamax")
vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#ffffff", bg = "#1a1a1a" })

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
}
