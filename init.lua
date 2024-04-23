-- ↓ for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- ↑ for lazy.nvim

-- vim.opt
vim.o.number      = true
vim.o.expandtab   = true
vim.o.tabstop     = 4
vim.o.shiftwidth  = 4

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.hlsearch = true -- highlights all matches

require("lazy").setup("plugins")
    	
