local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
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
