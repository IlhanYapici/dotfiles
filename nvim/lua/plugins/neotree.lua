return {
	{
		'nvim-neo-tree/neo-tree.nvim',
		opts = function(_, opts)
			opts.filesystem.filtered_items = {
				hide_by_name = {
					'node_modules',
				},
				always_show = {
					'.gitignore',
					'.storybook',
					'.vscode',
					'.idea',
					'.dockerignore',
					'.github',
				},
				always_show_by_pattern = {
					'.env*',
					'.prettier*',
					'.eslint*',
				},
			}

			return opts
		end,
	},
}
