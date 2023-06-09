-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Color Schemes
    -- use("rktjmp/lush.nvim")
    -- use { "muchzill4/doubletrouble" }
    -- use "olimorris/onedarkpro.nvim"
    -- use("sainnhe/everforest")
    -- use("Tsuzat/NeoSolarized.nvim")
    -- use("sainnhe/everforest")
    -- use("luisiacc/gruvbox-baby")
    -- use "EdenEast/nightfox.nvim"
    -- use "mhartington/oceanic-next"
    -- use "NLKNguyen/papercolor-theme"
    -- use "KabbAmine/yowish.vim"
    use "tristen/superman"

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use("ThePrimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- auto
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- auto close tags
    use('windwp/nvim-ts-autotag')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { 'numToStr/Comment.nvim', }

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    -- Games
    use {
        'alanfortlink/blackjack.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
    }
    use { "alec-gibson/nvim-tetris" }

    --use {"kassio/neoterm"}

    -- plugins in development
    use { 'Jett65/autofill' }
end)
