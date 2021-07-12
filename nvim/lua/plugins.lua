-- ==============================
-- =========== Plugins ==========
-- ==============================

-- ensure packer is installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  ---------------------------------
  --------- Productivity ----------
  ---------------------------------

  ----------
  -- find --
  ----------
  use { 'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = './install --bin', },
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  vim.g.nvim_tree_auto_close = 1
  vim.g.nvim_tree_follow = 1
  vim.g.nvim_tree_hide_dotfiles = 1
  vim.g.nvim_tree_group_empty = 1


  use { 'dyng/ctrlsf.vim' }

  ----------
  -- edit --
  ----------
  -- lsp
  use { 'neovim/nvim-lspconfig' }
  use { 'kabouzeid/nvim-lspinstall' }
  use { 'hrsh7th/nvim-compe' }

  -- comments
  use { 'tpope/vim-commentary' }
  -- surround
  use { 'tpope/vim-surround' }
  -- repeat
  use { 'tpope/vim-repeat' }
  -- additional subsitutions
  use { 'tpope/vim-abolish' }
  -- git
  use { 'tpope/vim-fugitive' }

  -- rest.vim
  use { 'taybart/rest.vim' }

  -- encode/decode base 64
  use { 'christianrondeau/vim-base64' }


  use { 'christoomey/vim-tmux-navigator' }
  vim.g.tmux_navigator_no_mappings = 1

  use { 'ntpeters/vim-better-whitespace' }
  use { 'unblevable/quick-scope' }


  use { 'xolox/vim-notes' }
  use { 'xolox/vim-misc' }
  vim.g.notes_directories = {'~/.notes'}

  -----------------------------
  --------- Looks -------------
  -----------------------------

  -- syntax highlighting with treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- better lsp diagnostic colors
  use { 'folke/lsp-colors.nvim' }

  -- bash escape coloring TODO lazy load this on cmd "FixShellColors"
  -- use { 'chrisbra/Colorizer' }
  use { 'norcalli/nvim-colorizer.lua' }

  -- nice markdown highlighting
  use { 'tpope/vim-markdown' }
  vim.g.markdown_fenced_languages = {
    'html',
    'python',
    'bash=sh',
    'go',
    'javascript',
    'typescript',
  }


  -- goyo
  use { 'junegunn/goyo.vim' }

  -- status line, tab line
  use { 'vim-airline/vim-airline',
    requires = {'vim-airline/vim-airline-themes' },
  }
  vim.g['airline#extensions#tabline#enabled'] = 1
  vim.g.airline_powerline_fonts = 1

-- colorscheme
use { 'morhetz/gruvbox' }
-- use {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}

end)
