return {
	-- notifications
	{
		'folke/noice.nvim',
		opts = function(_, opts)
			-- prevents useless notifications
			table.insert(opts.routes, {
				filter = {
					event = 'notify',
					find = 'No information available',
				},
				opts = { skip = true },
			})

			-- display borders on lsp doc
			opts.presets.lsp_doc_border = true
		end,
	},

	-- statusline
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = 'solarized_dark',
			},
		},
	},

	-- animations
	{
		'echasnovski/mini.animate',
		event = 'VeryLazy',
		opts = function(_, opts)
			opts.scroll = {
				enable = false,
			}
		end,
	},
}
