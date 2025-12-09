-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- format c++
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
  callback = function()
    vim.cmd("silent! !clang-format -i %")
  end,
})
-- trim EOF
require("trim").setup({
  trim_last_line = false,
  patterns = {
    [[%s/\n*\%$/\r/]],
  },
})
