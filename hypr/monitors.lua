-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = 2

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- MONITORS
-- X1 Carbon Gen 9
hl.monitor({
	output = "desc:California Institute of Technology 0x1403",
	mode = "3840x2400@60",
	position = "0x0",
	scale = 2.5,
})
-- Keep this rule on one line so Omarchy's startup clamshell reconciler can read it.
hl.monitor({ output = "eDP-1", mode = "3840x2400@60", position = "0x0", scale = 2.5 })
-- LG Ultragear
hl.monitor({
	output = "desc:LG Electronics LG ULTRAGEAR+ 502NTQD6V580",
	mode = "3840x2160@144.05000",
	position = "0x0",
	scale = 1.75,
})
