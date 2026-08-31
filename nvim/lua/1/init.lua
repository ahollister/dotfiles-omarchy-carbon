-- Plugin manager
require("1.lazy")

-- LSP config
require("1.config.lsp")

-- Opts
require("1.config.options")

-- Custom autocmds
require("1.config.autocmds")

-- Custom usercmds
require("1.config.usercmds")

-- Keymaps
require("1.config.keymaps.vim")
require("1.config.keymaps.lsp")
require("1.config.keymaps.plugins.oil")
require("1.config.keymaps.plugins.snacks")
require("1.config.keymaps.plugins.fine-cmdline")

-- Custom colorscheme related functions
require("1.config.colorscheme").setup()
