-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

use { "catppuccin/nvim", as = "catppuccin" }

-- Lua
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use('theprimeagen/harpoon')
    use('kylechui/nvim-surround')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}

use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}

use({
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
        -- add any options here
       require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
    })
  end,
  requires = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
})

use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

use('ellisonleao/gruvbox.nvim')
use('nvim-tree/nvim-tree.lua')
use('mfussenegger/nvim-jdtls')
use('hrsh7th/cmp-nvim-lsp')
use({ 'rose-pine/neovim', as = 'rose-pine' })
use('water-sucks/darkrose.nvim')
use('andweeb/presence.nvim')
use('easymotion/vim-easymotion')
use('myusuf3/numbers.vim')
use('https://github.com/ervandew/supertab.git')
use('tmhedberg/SimpylFold')
use('jiangmiao/auto-pairs')
use('yggdroot/indentline')
use('kien/rainbow_parentheses.vim')
use('RRethy/vim-illuminate')
use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
use('lukas-reineke/indent-blankline.nvim')
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
use('neovim/nvim-lspconfig')
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')
use('sainnhe/gruvbox-material')
use('mhartington/formatter.nvim')

use('nvim-tree/nvim-web-devicons')


end)
