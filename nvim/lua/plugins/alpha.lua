return {
  "goolord/alpha-nvim",
  event = "vimEnter",
  opts = function(_, opts)
    local logo = [[

			          ▀████▀▄▄              ▄█ 
			            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ 
			    ▄        █          ▀▀▀▀▄  ▄▀  
			   ▄▀ ▀▄      ▀▄              ▀▄▀  
			  ▄▀    █     █▀   ▄█▀▄      ▄█    
			  ▀▄     ▀▄  █     ▀██▀     ██▄█   
			   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  
			    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  
			   █   █  █      ▄▄           ▄▀   

	                   [ @minimumax ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
-- return {
-- 	"goolord/alpha-nvim",
-- 	event = "vimEnter",
-- 	config = function()
-- 		-- Set up a custom highlight for the header
-- 		vim.cmd([[highlight CustomHeader guifg=#29A298]])
-- 		vim.cmd([[highlight CustomButtons guifg=#2583C6]])
-- 		local alpha = require("alpha")
-- 		local dashboard = require("alpha.themes.dashboard")
-- 		dashboard.section.header.val = {
--
-- 			[[          ▀████▀▄▄              ▄█ ]],
-- 			[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
-- 			[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
-- 			[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
-- 			[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
-- 			[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
-- 			[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
-- 			[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
-- 			[[   █   █  █      ▄▄           ▄▀   ]],
-- 		}
-- 		-- Set the highlight for the header
--
-- 		dashboard.section.buttons.val = {
-- 			dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
-- 			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
-- 			dashboard.button("r", "󱋢  Recently used files", ":Telescope oldfiles <CR>"),
-- 			dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
-- 			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
-- 			dashboard.button("q", "󰩈  Quit Neovim", ":qa<CR>"),
-- 		}
--
-- 		local function footer()
-- 			return "Don't Stop Until You are Proud..."
-- 		end
--
-- 		dashboard.section.footer.val = footer()
--
-- 		-- dashboard.section.footer.opts.hl = "Type"
-- 		-- dashboard.section.header.opts.hl = "Include"
-- 		dashboard.section.footer.opts.hl = "CustomButtons"
-- 		dashboard.section.header.opts.hl = "CustomHeader"
-- 		dashboard.section.buttons.opts.hl = "Type"
--
-- 		dashboard.opts.opts.noautocmd = true
-- 		alpha.setup(dashboard.opts)
-- 		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
-- 	end,
-- }

-- [[
-- 	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- 	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- 	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- 	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- 	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- 	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- 	                   [ @elijahmanor ]
--     ]]
