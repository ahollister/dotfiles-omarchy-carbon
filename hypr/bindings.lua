-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- CAPS LOCK -> ESC
hl.config({
	input = {
		kb_options = "caps:escape",
	},
})

-- Clipboard manager
o.bind("SHIFT + ALT + V", "Clipboard manager", "omarchy-shell shell toggle omarchy.clipboard")

-- ALT HJKL to move focus
hl.unbind("ALT + H")
hl.unbind("ALT + J")
hl.unbind("ALT + K")
hl.unbind("ALT + L")
hl.bind("ALT + H", hl.dsp.focus({ direction = "l" }), { description = "Focus left" })
hl.bind("ALT + J", hl.dsp.focus({ direction = "d" }), { description = "Focus down" })
hl.bind("ALT + K", hl.dsp.focus({ direction = "u" }), { description = "Focus up" })
hl.bind("ALT + L", hl.dsp.focus({ direction = "r" }), { description = "Focus right" })

-- SUPER HJKL to move focus
hl.unbind("SUPER + H")
hl.unbind("SUPER + J")
hl.unbind("SUPER + K")
hl.unbind("SUPER + L")
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }), { description = "Focus left" })
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }), { description = "Focus down" })
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }), { description = "Focus up" })
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }), { description = "Focus right" })

-- SHIFT ALT HJKL to swap windows
hl.unbind("SHIFT + ALT + H")
hl.unbind("SHIFT + ALT + J")
hl.unbind("SHIFT + ALT + K")
hl.unbind("SHIFT + ALT + L")
hl.bind("SHIFT + ALT + H", hl.dsp.window.swap({ direction = "l" }), { description = "Window swap left" })
hl.bind("SHIFT + ALT + J", hl.dsp.window.swap({ direction = "d" }), { description = "Window swap down" })
hl.bind("SHIFT + ALT + K", hl.dsp.window.swap({ direction = "u" }), { description = "Window swap up" })
hl.bind("SHIFT + ALT + L", hl.dsp.window.swap({ direction = "r" }), { description = "Window swap right" })

-- SHIFT SUPER HJKL to swap windows
hl.unbind("SHIFT + SUPER + H")
hl.unbind("SHIFT + SUPER + J")
hl.unbind("SHIFT + SUPER + K")
hl.unbind("SHIFT + SUPER + L")
hl.bind("SHIFT + SUPER + H", hl.dsp.window.swap({ direction = "l" }), { description = "Window swap left" })
hl.bind("SHIFT + SUPER + J", hl.dsp.window.swap({ direction = "d" }), { description = "Window swap down" })
hl.bind("SHIFT + SUPER + K", hl.dsp.window.swap({ direction = "u" }), { description = "Window swap up" })
hl.bind("SHIFT + SUPER + L", hl.dsp.window.swap({ direction = "r" }), { description = "Window swap right" })
