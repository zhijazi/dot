return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  opts = {
    highlight = { enable = true },
    ensure_installed = { "bash", "c", "lua", "query", "rust", "vim", "vimdoc", },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
};
