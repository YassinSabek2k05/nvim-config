-- Override the lang.sql extra's default sqlfluff dialect (ansi -> postgres)
return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=postgres", "-" },
      }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters.sqlfluff = opts.linters.sqlfluff or {}
      opts.linters.sqlfluff.args = { "lint", "--format=json", "--dialect=postgres", "-" }
    end,
  },
}
