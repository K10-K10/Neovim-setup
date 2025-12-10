return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
        Neovim v0.12.0-dev        

        Build type: RelWithDebInfo
        LuaJIT 2.1.1703358377     
]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {{
          icon = " ",
          key = "f",
          desc = "Find File",
          action = ":lua Snacks.dashboard.pick('files')"
        }, {
          icon = " ",
          key = "n",
          desc = "New File",
          action = ":ene | startinsert"
        }, {
          icon = " ",
          key = "g",
          desc = "Find Text",
          action = ":lua Snacks.dashboard.pick('live_grep')"
        }, {
          icon = " ",
          key = "r",
          desc = "Recent Files",
          action = ":lua Snacks.dashboard.pick('oldfiles')"
        }, {
          icon = " ",
          key = "c",
          desc = "Config",
          action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})"
        }, {
          icon = " ",
          key = "s",
          desc = "Restore Session",
          section = "session"
        }, {
          icon = " ",
          key = "x",
          desc = "Lazy Extras",
          action = ":LazyExtras"
        }, {
          icon = "󰒲 ",
          key = "l",
          desc = "Lazy",
          action = ":Lazy"
        }, {
          icon = " ",
          key = "q",
          desc = "Quit",
          action = ":qa"
        }}
      }
    },
    indent = {
      enabled = true
    },
    input = {
      enabled = true
    },
    notifier = {
      enabled = true
    },
    scope = {
      enabled = true
    },
    scroll = {
      enabled = true
    },
    statuscolumn = {
      enabled = false
    }, -- we set this in options.lua
    toggle = {
      map = LazyVim.safe_keymap_set
    },
    words = {
      enabled = true
    }
  }
}
