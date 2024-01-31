return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre "
      .. vim.fn.expand("~")
      .. "/workspace/obsidian/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/workspace/obsidian/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/workspace/obsidian",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },

    -- Optional, configure key mappings. These are the defaults.
    -- If you don't want to set any keymappings this
    -- way then set 'mappings = {}'.
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["<leader>of"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>oc"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Paste image.
      ["<leader>op"] = {
        action = function()
          return require("obsidian").util.paste_img()
        end,
        opts = { buffer = true },
      },
    },
    -- see below for full list of options 👇
    -- Specify how to handle attachments.
    attachments = {
      -- The default folder to place images in via `:ObsidianPasteImg`.
      -- If this is a relative path it will be interpreted as relative to the vault root.
      -- You can always override this per image by passing a full path to the command instead of just a filename.
      -- img_folder = "assets/imgs", -- This is the default
      img_folder = ".images", -- This is the default
      -- A function that determines the text to insert in the note when pasting an image.
      -- It takes two arguments, the `obsidian.Client` and a plenary `Path` to the image file.
      -- This is the default implementation.
      ---@param client obsidian.Client
      ---@param path Path the absolute path to the image file
      ---@return string
      img_text_func = function(client, path)
        local link_path
        local vault_relative_path = client:vault_relative_path(path)
        if vault_relative_path ~= nil then
          -- Use relative path if the image is saved in the vault dir.
          link_path = vault_relative_path
        else
          -- Otherwise use the absolute path.
          link_path = tostring(path)
        end
        local display_name = vim.fs.basename(link_path)
        return string.format("![%s](%s)", display_name, link_path)
      end,
    },
  },
}
