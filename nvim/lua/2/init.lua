-- Plugin manager
require("2.lazy")

-- LSP config
require("2.config.lsp")

-- Opts
require("2.config.options")

-- Custom autocmds
require("2.config.autocmds")

-- Custom usercmds
require("2.config.usercmds")

-- Keymaps
require("2.config.keymaps.vim")
require("2.config.keymaps.lsp")
require("2.config.keymaps.plugins.oil")
require("2.config.keymaps.plugins.snacks")
require("2.config.keymaps.plugins.fine-cmdline")

-- Custom colorscheme related functions
require("2.config.colorscheme").setup()
