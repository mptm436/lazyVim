return {
  -- Mason configuration for ensuring formatters are installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "proselint")
      table.insert(opts.ensure_installed, "write-good")
      table.insert(opts.ensure_installed, "alex")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.diagnostics.proselint)
      table.insert(opts.sources, nls.builtins.code_actions.proselint)
      table.insert(opts.sources, nls.builtins.diagnostics.alex)
      table.insert(opts.sources, nls.builtins.diagnostics.write_good)
    end,
  },
}
