-- lua/config/formatting.lua
return {{
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 300
    },
    formatters_by_ft = {
      lua = {"stylua"},
      cpp = {"clang-format"},
      hpp = {"clang-format"},
      c = {"clang-format"}
      -- python = {"black"} 
    }
  }
}}
