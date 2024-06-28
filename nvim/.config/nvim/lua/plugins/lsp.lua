return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {
          name = "rubocop",
          cmd = { "bundle", "exec", "rubocop" },
        },
        ruby_lsp = {
          name = "ruby_lsp",
        },
        solargraph = {
          name = "solargraph",
          autostart = false,
        },
      },
    },
  },
}
