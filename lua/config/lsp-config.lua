local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    --vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', '<Leader>e', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<cr>', opts)
    vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.goto_next({severity=vim.diagnostic.severity.ERROR})<cr>', opts)
    vim.keymap.set('n', 'gE', '<cmd>lua vim.diagnostic.goto_prev({severity=vim.diagnostic.severity.ERROR})<cr>', opts)
    vim.keymap.set('n', 'gw', '<cmd>lua vim.diagnostic.goto_next({severity=vim.diagnostic.severity.WARN})<cr>', opts)
    vim.keymap.set('n', 'gW', '<cmd>lua vim.diagnostic.goto_prev({severity=vim.diagnostic.severity.WARN})<cr>', opts)
  end,
})

require("lspconfig").clangd.setup{
	cmd = {"clangd-17"}
}

require("lspconfig").pylsp.setup{}

require("lspconfig").rust_analyzer.setup {
    settings = {
	['rust-analyzer'] = {
	    diagnostics = {
		enable = false;
	    }
	}
    }
}

local cmp = require('cmp')
local luasnip = require("luasnip")

cmp.setup({
sources = {
    {name = 'nvim_lsp'},
    {name = 'vim-dadbod-completion'},
  },
  snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body)
  end,
	},
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            if luasnip.expandable() then
                luasnip.expand()
            else
                cmp.confirm({
                    select = true,
                })
            end
	else 
	    if luasnip.locally_jumpable(1) then
		luasnip.jump(1)
	    else
		fallback()
	    end
	end
    end,{ "i", "s" }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

require("telescope").setup {
    extension = {
	["ui-select"] = {
	    require("telescope.themes").get_dropdown {

	    }
	}
    }
}

require("telescope").load_extension("ui-select")
