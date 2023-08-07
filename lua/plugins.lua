local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use 'preservim/nerdcommenter'
  use {
      'neoclide/coc.nvim', branch = 'release'
  }
  use {
      'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
  }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'karb94/neoscroll.nvim'
  use {
      'akinsho/bufferline.nvim', tag = '*', requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'sitiom/nvim-numbertoggle'
  use 'github/copilot.vim'
  use {
      'catppuccin/nvim', as = 'catppuccin'
  }
end)
