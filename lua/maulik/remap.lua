vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- in visual mode, when i do shift_j or shift_k move the line up down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when doing page up or down reset cursor on center of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when finding next occurrence reset cursor to center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when pasting over delete, the buffer saves what was deleted, <leader>p keeps copied
vim.keymap.set("x", "<leader>p", "\"_dp")

-- toggles nvimtree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- focuses on nvimtree
-- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>")

-- buffer navigation
vim.keymap.set("n", "<leader>h", "<cmd>bprev<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>bdelete<BAR>bprev<CR>")

-- comments
-- vim.keymap.set("n", "<leader>//", "gcc")
-- vim.keymap.set("v", "<leader>//", "gc")

-- lazy git remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")
