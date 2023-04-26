local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    -- Replace these with whatever servers you want to install
    'tsserver',
    'eslint',
    'jedi_language_server',
    'lua_ls',
    'cssls',
    'html',
    'jsonls'
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- lsp.format_on_save({
--     servers = {
--         ['lua_ls'] = { 'lua' },
--         ['rust_analyzer'] = { 'rust' },
--         ['tsserver'] = { 'typeScript' },
--         ['eslint'] = { 'javaScript' },
--         ['jedi_language_server'] = { 'python' },
--         ['cssls'] = { 'css' },
--         ['html'] = { 'html' },
--         ['jsonls'] = { 'json' },
--     }
-- })

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  lsp.buffer_autoformat()
end)

lsp.setup_nvim_cmp({
    select_behavior = 'insert'
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }
})

-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)
--
-- lsp.skip_server_setup({'rust_analyzer'})

lsp.setup()
