return {
  {
    "joshuavial/aider.nvim",
    opts = {
      auto_manage_context = true,
      default_bindings = false,
    },
    keys = {
      { "<leader>aa", "<cmd>AiderOpen<cr>", desc = "Aider Open" },
      { "<leader>ab", "<cmd>AiderBackground<cr>", desc = "Aider Background" },
      { "<leader>at", "<cmd>AiderToggle<cr>", desc = "Aider Toggle" },
      { "<leader>ar", "<cmd>AiderReset<cr>", desc = "Aider Reset" },
    },
  },
}
