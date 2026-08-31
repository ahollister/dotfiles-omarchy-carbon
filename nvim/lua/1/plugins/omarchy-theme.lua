local theme_file = vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")

local ok, omarchy_specs = pcall(dofile, theme_file)
if not ok then
	vim.notify("Could not load Omarchy theme: " .. omarchy_specs, vim.log.levels.WARN)
	return {}
end

local plugins = {}
local dependencies = {}
local colorscheme

for _, spec in ipairs(omarchy_specs) do
	if spec[1] == "LazyVim/LazyVim" then
		colorscheme = spec.opts and spec.opts.colorscheme
	else
		spec.lazy = false
		spec.priority = spec.priority or 1000

		table.insert(plugins, spec)
		table.insert(dependencies, spec[1])
	end
end

if colorscheme then
	vim.g.omarchy_colorscheme = colorscheme

	table.insert(plugins, {
		name = "omarchy-colorscheme-loader",
		dir = vim.fn.stdpath("config"),
		lazy = false,
		priority = 900,
		dependencies = dependencies,
		config = function()
			vim.cmd.colorscheme(colorscheme)
		end,
	})
end

return plugins
