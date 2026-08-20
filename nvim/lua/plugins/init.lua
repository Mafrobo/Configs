require "paq" {
    "savq/paq-nvim", -- Let Paq manage itself
   -- "neovim/nvim-lspconfig",
  --  { "lervag/vimtex", opt = true }, -- Use braces when passing options
   --  'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    "AlphaTechnolog/pywal.nvim",
    { "ms-jpq/coq_nvim", branch = "coq" },
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
    "neovim/nvim-lspconfig"
}
require("plugins.pywal")
require("plugins.lsp")
