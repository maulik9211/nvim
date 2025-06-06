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
vim.keymap.set("n", "'", "<cmd>NvimTreeCollapse<CR>")

-- focuses on nvimtree
-- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>")

-- buffer navigation
vim.keymap.set("n", "<leader>h", "<cmd>bprev<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>bdelete<BAR>bprev<CR>")

-- telescope
vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<CR>")

-- comments
-- vim.keymap.set("n", "<leader>//", "gcc")
-- vim.keymap.set("v", "<leader>//", "gc")

-- lazy git remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")

-- formatting
-- vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>")
vim.keymap.set("n", "<leader>f", function()
    -- Organize imports for TypeScript/JavaScript
    vim.lsp.buf.execute_command({
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) }
    })
    -- Format the document
    vim.lsp.buf.format()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
