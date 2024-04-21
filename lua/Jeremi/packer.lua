--)) This file can be loaded by calling `lua require('plugins')` from your init.vimpackpack

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                            , branch = '0.1.x',
  
 	requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }

	    use( 
        'nvim-treesitter/nvim-treesitter',
	{run = ':TSUpdate'}
    )
	use('ThePrimeagen/harpoon')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
     {
  theme = 'doom',
  config = {
    header = {"Welcom"}, --your header
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'Find Dotfiles',
        key = 'f',
        keymap = 'SPC f d',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'lua print(3)'
      },
    },
    footer = {}  --your footer
  }
}
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}

use{

'folke/noice.nvim',
requires={'MunifTanjim/nui.nvim','rcarriga/nvim-notify'}



}

use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'
end)
