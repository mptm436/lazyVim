return {
  -- Mason configuration for ensuring formatters are installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "stylua")
      table.insert(opts.ensure_installed, "prettierd")
    end,
  },

  -- Conform configuration for setting up formatters
  {
    "stevearc/conform.nvim",
    optional = true,
    config = function()
      require("conform").setup({
        -- Define custom formatters
        formatters = {
          black = {
            command = "black", -- Command to run
            args = { "--skip-string-normalization" }, -- Custom arguments
            -- Other properties can be added here if needed
          },
          -- Add definitions for other formatters like prettierd here if necessary
        },

        -- Map of filetype to formatters
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          javascript = { "prettierd" },
          typescript = { "prettierd" },
          javascriptreact = { "prettierd" },
          typescriptreact = { "prettierd" },
          svelte = { "prettierd" },
          css = { "prettierd" },
          html = { "prettierd" },
          json = { "prettierd" },
          yaml = { "prettierd" },
          markdown = { "prettierd" },
          graphql = { "prettierd" },
          -- Other filetype-specific formatters...
          ["*"] = { "codespell" },
          ["_"] = { "trim_whitespace" },
        },

        -- Other `conform` settings...
        format_on_save = {
          timeout_ms = 1000,
          lsp_fallback = true,
        },
      })

      --   vim.keymap.set({ "n", "v" }, "<leader>cf", function()
      --     require("conform").format({
      --       lsp_fallback = true,
      --       async = false,
      --       timeout_ms = 500,
      --     })
      --   end, { desc = "Format file or range (in visual mode)" })
    end,
  },
}
