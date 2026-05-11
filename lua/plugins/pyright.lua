return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      -- 统一 ruff/pyright 的 position encoding，避免 UTF-16 vs UTF-8 警告
      local utf16_caps = { general = { positionEncodings = { "utf-16" } } }

      -- ---- pyright ----
      opts.servers.pyright = vim.tbl_deep_extend("force", opts.servers.pyright or {}, {
        capabilities = vim.tbl_deep_extend(
          "force",
          opts.servers.pyright and opts.servers.pyright.capabilities or {},
          utf16_caps
        ),
        settings = {
          python = {
            analysis = {
              -- 你想安静：off；想留一点：basic
              typeCheckingMode = "off",

              -- 如果你改成 basic，但想把几类提示静音，打开这些：
              diagnosticSeverityOverrides = {
                reportOptionalMemberAccess = "none",
                reportGeneralTypeIssues = "none",
                reportOperatorIssue = "none",
              },

              autoSearchPaths = true,
              diagnosticMode = "openFilesOnly",
              useLibraryCodeForTypes = false,
            },
          },
        },
      })

      -- ---- ruff ----
      opts.servers.ruff = vim.tbl_deep_extend("force", opts.servers.ruff or {}, {
        capabilities = vim.tbl_deep_extend(
          "force",
          opts.servers.ruff and opts.servers.ruff.capabilities or {},
          utf16_caps
        ),
      })
    end,
  },
}
