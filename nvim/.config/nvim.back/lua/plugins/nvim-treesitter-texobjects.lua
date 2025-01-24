return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enabled = true,
          lookahead = true,
          keymaps = {
            ["a="] = { query = "@assignement.outer", desc = "Select outer part of an assignement" },
            ["i="] = { query = "@assignement.inner", desc = "Select inner part of an assignement" },
            ["l="] = { query = "@assignement.lhs", desc = "Select left part of an assignement" },
            ["r="] = { query = "@assignement.rhs", desc = "Select outer part of an assignement" },
          },
        },
      },
    })
  end,
}
