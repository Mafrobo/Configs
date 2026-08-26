local parsers = { 'lua', 'python', 'bash' }

require('nvim-treesitter').setup()
require('nvim-treesitter').install(parsers)

vim.api.nvim_create_autocmd('FileType', {
  pattern = parsers,
  callback = function() vim.treesitter.start() end,
})
