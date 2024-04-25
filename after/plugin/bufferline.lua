vim.opt.termguicolors = true
-- require("bufferline").setup{}

local bufferline = require('bufferline')
bufferline.setup {
    options = {
        close_command = "Bdelete !%d",
        right_mouse_command = "Bdelete !%d",
        offsets = {
            {filetype="NvimTree",text="", padding=1}
        },
        separator_style="slant" 
    }
}

