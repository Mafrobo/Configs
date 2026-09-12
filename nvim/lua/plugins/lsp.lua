vim.g.coq_settings = {}
local coq = require("coq")
vim.lsp.protocol.make_client_capabilities()

vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = { enabled = true },
        pyflakes = { enabled = true },
      }
    }
  }
})

vim.lsp.enable('pylsp')
