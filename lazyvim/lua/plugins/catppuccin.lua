return {{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Load after LazyVim core
  opts = {
    flavour = "mocha", -- Or latte, frappe, macchiato
    transparent_background = true, -- For modern terminals/transparency
    show_end_of_buffer = true,
    float = {
      transparent = true,
      solid = true
    },
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15
    },
    styles = {
      comments = {"italic"},
      conditionals = {"italic"}
    },
    integrations = {
      cmp = true,
      barbar = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true
    }
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
  end
}, -- Add this to ensure LazyVim uses it as the default
{
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "catppuccin"
  }
}}

