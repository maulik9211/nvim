require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- require("catppuccin").setup({
--     flavour = "auto", -- latte, frappe, macchiato, mocha
-- })

function ColorMyPencils(color)
    color = color or "onedark" or "rose-pine"
    vim.cmd.colorscheme(color)

    --	vim.api.nvim_set_hl(0, "Normal", {bg="None"})
    --	vim.api.nvim_set_hl(0, "NormalFloat", {bg="None"})
end

ColorMyPencils()
