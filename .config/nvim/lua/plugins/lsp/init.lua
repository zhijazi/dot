return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  { "williamboman/mason-lspconfig.nvim",
    config = true,
  },
  { "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },
}
