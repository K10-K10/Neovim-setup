require("catppuccin").setup({
  flavour = "auto", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha"
  },
  transparent_background = true, -- disables setting the background color.
  float = {
    transparent = true, -- enable transparent floating windows
    solid = true -- use solid styling for floating windows, see |winborder|
  },
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15 -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = {"italic"}, -- Change the style of comments
    conditionals = {"italic"},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {}
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
    virtual_text = {
      errors = {"italic"},
      hints = {"italic"},
      warnings = {"italic"},
      information = {"italic"},
      ok = {"italic"}
    },
    underlines = {
      errors = {"underline"},
      hints = {"underline"},
      warnings = {"underline"},
      information = {"underline"},
      ok = {"underline"}
    },
    inlay_hints = {
      background = true
    }
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  auto_integrations = false,
  integrations = {
    cmp = true,
    barbar = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = ""
    }
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  }
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- Mode
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "everforest",
    section_separators = {
      left = "",
      right = ""
    },
    component_separators = {
      left = "",
      right = ""
    },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {{
      "filename",
      file_status = true,
      path = 0
    }},
    lualine_x = {{
      "diagnostics",
      sources = {"nvim_diagnostic"},
      symbols = {
        error = " ",
        warn = " ",
        info = " ",
        hint = " "
      }
    }, "encoding", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      "filename",
      file_status = true,
      path = 1
    }},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {"fugitive"}
})

-- Notification
local status, noice = pcall(require, "noice")
if not status then
  return
end

noice.setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true
    }
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false, -- use a classic bottom cmdline for search
    command_palette = false, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false -- add a border to hover docs and signature help
  }
})
