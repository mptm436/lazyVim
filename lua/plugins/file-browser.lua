return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sf",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files",
    },
  },
  config = function()
    require("telescop").load_extension("file_browser")
  end,
}
