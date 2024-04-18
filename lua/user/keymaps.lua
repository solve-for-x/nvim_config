local opts = { noremap = true, silent =  true }

-- Shorten function name
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "Space", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal
---------
-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Visual 
---------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("", "<leader>e", "<cmd>Lexplore<CR><CR>", opts)

