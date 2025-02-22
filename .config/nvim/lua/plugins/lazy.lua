----------------------------------------------------------------
-- LAZY INSTALL
----------------------------------------------------------------  

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


----------------------------------------------------------------
-- PLUGINS INSTALL 
---------------------------------------------------------------- 

require("lazy").setup({
  { "catppuccin/nvim", as = "catppuccin" },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }    
  },
  { 'nvim-treesitter/nvim-treesitter' },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    requires = { "nvim-tree/nvim-web-devicons" },
  },
  {
	'morhetz/gruvbox',
  },
})

