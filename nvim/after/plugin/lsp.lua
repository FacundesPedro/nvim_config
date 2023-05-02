local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, preserve_mappings = false }
	lsp.default_keymaps(opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	mapping = {
		-- `Enter` key to confirm completion
		['<CR>'] = cmp.mapping.confirm({ select = true }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

	},

})

lsp.setup()
