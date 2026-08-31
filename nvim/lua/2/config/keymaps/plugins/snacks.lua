local snacks = require("snacks")

local function file_picker_with_path(path)
	if path == nil then
		vim.ui.input({ prompt = "Enter directory path: " }, function(p)
			if p and p ~= "" then
				snacks.picker.files({ cwd = path })
			end
		end)
	end
	snacks.picker.files({ cwd = path })
end

local function grep_picker_with_path(path)
	if path == nil then
		vim.ui.input({ prompt = "Enter directory path: " }, function(p)
			if p and p ~= "" then
				snacks.picker.grep({ cwd = path })
			end
		end)
	end

	snacks.picker.grep({ cwd = path })
end

-- File picker
vim.keymap.set("n", "<leader><space>", function()
	snacks.picker.smart()
end)

-- Dim toggle
vim.keymap.set("n", "<leader>dd", function()
	snacks.toggle.dim():toggle()
end)

-- Zen mode toggle
vim.keymap.set("n", "<leader>z", function()
	snacks.toggle.zen():toggle()
end)

-- Grep search
vim.keymap.set("n", "<leader>fs", function()
	snacks.picker.grep()
end)

-- File name search
vim.keymap.set("n", "<leader><space>", function()
	snacks.picker.files()
end)

-- Recent Files
vim.keymap.set("n", "<leader>fr", function()
	snacks.picker.recent()
end)

-- GREP IN PROVIDED PATH
vim.keymap.set("n", "<leader>/", function()
	grep_picker_with_path()
end)

-- FILES IN PROVIDED PATH
vim.keymap.set("n", "<leader>ff", function()
	file_picker_with_path()
end)

-- FILES IN wp-content
vim.keymap.set("n", "<leader>fw", function()
	file_picker_with_path("wp-content")
end)

-- Command history
vim.keymap.set("n", "<leader>:", function()
	snacks.picker.command_history()
end)

-- Git blame
vim.keymap.set("n", "<leader>gb", function()
	snacks.git.blame_line()
end)

-- Open Buffers
vim.keymap.set("n", "<leader>,", function()
	snacks.picker.buffers()
end)

-- Next Reference
vim.keymap.set("n", "[[", function()
	snacks.words.jump(-1, true)
end)

-- Prev Reference
vim.keymap.set("n", "]]", function()
	snacks.words.jump(1, true)
end)
