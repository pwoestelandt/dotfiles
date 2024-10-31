return {
  { "nvim-neotest/neotest-plenary" },
  { "olimorris/neotest-rspec" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        ["neotest-rspec"] = {
          rspec_cmd = function()
            return { "bundle", "exec", "rspec" }
          end,
        },
      },
    },
  },
}
