return {
  "m4xshen/hardtime.nvim",
  -- enable = false,
  -- command = "Hardtime",
  event = "BufEnter",
  keys = { { "<leader>uh", "<cmd>Hardtime toggle<cr>", desc = "Hardtime Toggle" } },
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {},
}
