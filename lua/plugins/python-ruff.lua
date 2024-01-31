-- disable this plugin
if true then
  return {}
end
-- comment out the above part to enable the following
return {
  -- Mason configuration for ensuring formatters are installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "ruff")
      -- table.insert(opts.ensure_installed, "stylua")
      -- table.insert(opts.ensure_installed, "prettierd")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.ruff)
      table.insert(opts.sources, nls.builtins.diagnostics.ruff)
      table.insert(opts.sources, nls.builtins.code_actions.ruff)
    end,
  },
}
