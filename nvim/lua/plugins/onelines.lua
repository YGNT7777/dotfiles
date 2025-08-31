return {
      { -- This helps with ssh tunneling and copying to clipboard
	    'ojroques/nvim-oscyank',
      },
      { -- Git plugin
	    'tpope/vim-fugitive',
      },
      {
	    'brenoprata10/nvim-highlight-colors',
	    config = function()
		  require('nvim-highlight-colors').setup({})
	    end
      },
}
