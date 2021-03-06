local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --  print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --  print(ok, err, code)
    if ok then vim.cmd("packadd " .. plugin) end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)
    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "glepnir/lspsaga.nvim"
    use "kabouzeid/nvim-lspinstall"
    use "onsails/lspkind-nvim"

    -- Autocomplete
    use "hrsh7th/nvim-compe"
    use "hrsh7th/vim-vsnip"
    use "rafamadriz/friendly-snippets"

    -- Org Mode
    use "vhyrro/neorg"

    -- Telescope
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-fzy-native.nvim"

    -- Explorer
    use "kyazdani42/nvim-tree.lua"

    -- Colorscheme
    use "sainnhe/gruvbox-material"

    -- Icons
    use "kyazdani42/nvim-web-devicons"

    -- Bufferline
    use "romgrk/barbar.nvim"

    -- General
    use "windwp/nvim-autopairs"
    use "terrortylor/nvim-comment"

end)
