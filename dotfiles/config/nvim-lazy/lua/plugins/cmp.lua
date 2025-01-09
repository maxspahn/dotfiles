return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
    "saadparwaiz1/cmp_luasnip",
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["'"] = cmp.mapping.select_next_item(),
				["<leader>'"] = cmp.mapping.select_prev_item(),
        ["<leader><leader>"] = cmp.mapping.close(),
				["<Tab>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
        ["<leader>n"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                        cmp.mapping.confirm({
                          behavior = cmp.ConfirmBehavior.Replace,
                          select = true,
                        })
                elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                else
                        fallback()
                end
        end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),
		})

		vim.cmd([[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
	end,
}
