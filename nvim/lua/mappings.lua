require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- buffer
map("n", ",p", '"_dP', {desc = "Paste over without changing paste register"})  -- greatest remap evar! https://youtu.be/qZO9A5F6BZs?t=356
map("v", ",p", '"_dP')                                                         -- preserves the register when using this keymap to paste

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "nzzzv")

-- harpoon

local harpoon = require("harpoon")
harpoon:setup()

map("n", "<leader>aa", function() harpoon:list():add() end, { desc = "Add to harpoon buffer" })
map("n", "<leader>ah", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Show harpoon buffer" })
