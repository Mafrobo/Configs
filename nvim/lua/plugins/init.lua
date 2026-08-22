require "paq" {
    "savq/paq-nvim", -- Let Paq manage itself
  --  { "lervag/vimtex", opt = true }, -- Use braces when passing options
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    "AlphaTechnolog/pywal.nvim",
    { "ms-jpq/coq_nvim", branch = "coq" },
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
    "neovim/nvim-lspconfig",
    "nvim-lualine/lualine.nvim",
    "MunifTanjim/nui.nvim",
    "folke/noice.nvim",
    "rcarriga/nvim-notify",
    "dstein64/vim-startuptime",
    "folke/which-key.nvim",
    "lewis6991/gitsigns.nvim",
    "numToStr/Comment.nvim",
    "windwp/nvim-autopairs"
}
require("plugins.pywal")
require("plugins.lsp")
require("plugins.lualine")
require("nvim-autopairs").setup()
