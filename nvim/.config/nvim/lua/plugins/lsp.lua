return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {
          name = "rubocop",
        },
        ruby_lsp = {
          name = "ruby_lsp",
          on_attach = function(client)
            -- Disable semantic tokens
            client.server_capabilities.semanticTokensProvider = nil
          end,
        },
        solargraph = {
          name = "solargraph",
          autostart = false,
        },
        tsserver = {
          name = "tsserver",
        },
      },
    },
  },
}
