formatters_by_ft = {
  c = { "clang_format" },
  cpp = { "clang_format" },
  hpp = { "clang_format" },
  h = { "clang_format" },
}

-- Prevent formatters from deleting final newline
require("conform").setup({
  format_on_save = {
    lsp_fallback = true,
  },
  formatters = {
    ["*"] = {
      trim_final_newlines = false,
    },
  },
})
