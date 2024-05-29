vim.opt.termguicolors = true
-- require("bufferline").setup{}

local bufferline = require('bufferline')
bufferline.setup {
    options = {
        close_command = "Bdelete !%d",
        right_mouse_command = "Bdelete !%d",
        offsets = {
            { filetype = "NvimTree", text = "", padding = 1 }
        },
        separator_style = "slope",

        highlight = { underline = true, sp = "blue" }, -- Optional
        -- * `slant` - Use slanted/triangular separators
        -- * `padded_slant` - Same as `slant` but with extra padding which some terminals require.
        --   If `slant` does not render correctly for you try padded this instead.
        -- * `slope` - Use slanted/triangular separators but slopped to the right
        -- * `padded_slope` - Same as `slope` but with extra padding which some terminals require.
        --   If `slope` does not render correctly for you try padded this instead.
        -- * `thick` - Increase the thickness of the separator characters
        -- * `thin` - (default) Use thin separator characters
        -- * finally you can pass in a custom list containing 2 characters which will be
        --   used as the separators e.g. `{"|", "|"}`, the first is the left and the
        --   second is the right separator
        --

    }
}
