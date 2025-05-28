local lsp_zero = require('lsp-zero')

-- Set recommended presets
lsp_zero.extend_lspconfig()

-- Set up cmp
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = {
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- <Enter>
  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select), -- optional
  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select), -- optional
}

require('cmp').setup({
  mapping = cmp.mapping.preset.insert(cmp_mappings),
})

-- Setup LSP keybindings
lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

-- Set up mason and LSP servers
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "yamlls",
    "ts_ls",
    "sqlls",
    "tailwindcss",
    "jsonls",
    "lua_ls",
    "lemminx"
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
 -- NOTE: correct name is `tsserver`, not `ts_ls`
