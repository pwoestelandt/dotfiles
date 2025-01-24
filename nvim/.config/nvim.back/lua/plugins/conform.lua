return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      rubocop = {
        -- Change where to find the command
        command = "bundle exec rubucop",
        -- Adds environment args to the yamlfix formatter
      },
    },
  },
}
