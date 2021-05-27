local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/savq/paq-nvim " .. install_path)
  execute "packadd paq-nvim"
end

local paq = require("paq-nvim").paq
        -- Paq can manage itself as an optional plugin
        paq "savq/paq-nvim"

        -- LSP
        paq "neovim/nvim-lspconfig"
        paq "glepnir/lspsaga.nvim"
        paq "kabouzeid/nvim-lspinstall"
        paq "onsails/lspkind-nvim"

        -- Autocomplete
        paq "hrsh7th/nvim-compe"
        paq "hrsh7th/vim-vsnip"
        paq "rafamadriz/friendly-snippets"

        -- Telescope
        paq "nvim-lua/popup.nvim"
        paq "nvim-lua/plenary.nvim"
        paq "nvim-telescope/telescope.nvim"
        paq "nvim-telescope/telescope-fzy-native.nvim"

        -- Explorer
        paq "kyazdani42/nvim-tree.lua"

        -- Colorscheme
        paq "sainnhe/gruvbox-material"

        -- Icons
        paq "kyazdani42/nvim-web-devicons"

        -- Bufferline
        paq "romgrk/barbar.nvim"

        -- General
        paq "folke/which-key.nvim"
        paq "windwp/nvim-autopairs"
        paq "terrortylor/nvim-comment"
