-- Load the optional license from a machine-local file. Override the default
-- location with INTELEPHENSE_LICENSE_FILE when a machine stores it elsewhere.
local get_intelephense_license = function()
	local path = os.getenv("INTELEPHENSE_LICENSE_FILE")
	if not path or path == "" then
		path = vim.fn.expand("~/.config/intelephense/license.txt")
	else
		path = vim.fn.expand(path)
	end

	local f = io.open(path, "rb")
	if not f then
		return nil
	end

	local content = f:read("*a")
	f:close()
	content = string.gsub(content, "%s+", "")
	return content ~= "" and content or nil
end

-- Start settings
local intelephense_settings = {
	files = {
		maxSize = 5000000,
	},
}

local license_key = get_intelephense_license()
if license_key then
	intelephense_settings.licenseKey = license_key
end

-- If WP, include WP core
local wp = require("wp-utils.utils")
local root_markers = { ".git", "composer.json" }
if wp.is_wp() then
	root_markers = { "wp-load.php" }
	intelephense_settings.environment = {
		includePaths = {
			wp.get_wp_path(),
		},
	}
end

return {
	cmd = { "intelephense", "--stdio" },
	filetypes = { "php" },
	root_markers = root_markers,
	settings = {
		intelephense_settings,
	},
}
