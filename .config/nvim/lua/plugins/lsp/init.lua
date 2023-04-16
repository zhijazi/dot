return {
  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        build = ":MasonUpdate"
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    },
    config = function()
      local lsp = require('lsp-zero').preset({
        name = 'recommended',
      })

      lsp.ensure_installed({
        'eslint',
        'html',
        'tsserver',
        'rust_analyzer',
      })

      lsp.nvim_workspace()
      lsp.setup()
    end,
  },
}
