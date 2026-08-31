---@type vim.lsp.Config

local capabilities = require("blink.cmp").get_lsp_capabilities()

return {
  cmd = { "lua-language-server" },
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        enable = true,
        globals = { "vim", "Snacks" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
    ".git",
  },
}
