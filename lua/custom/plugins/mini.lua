return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      local map = require("mini.map")
      map.setup({
        -- No need to copy this inside `setup()`. Will be used automatically.
        -- Highlight integrations (none by default)
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.gitsigns(),
          map.gen_integration.diagnostic(),
        },

        -- Symbols used to display data
        symbols = {
          -- Encode symbols. See `:h MiniMap.config` for specification and
          -- `:h MiniMap.gen_encode_symbols` for pre-built ones.
          -- Default: solid blocks with 3x2 resolution.
          encode = map.gen_encode_symbols.dot("4x2"),
          -- Scrollbar parts for view and line. Use empty string to disable any.
          scroll_line = "█",
          scroll_view = "┃",
        },

        -- Window options
        window = {
          -- Whether window is focusable in normal way (with `wincmd` or mouse)
          focusable = false,
          -- Side to stick ('left' or 'right')
          side = "right",
          -- Whether to show count of multiple integration highlights
          show_integration_count = true,
          -- Total width
          width = 20,
          -- Value of 'winblend' option
          winblend = 25,
        },
      })
    end,
    keys = {
      { "<leader>m", desc = "MiniMap" },
      { "<leader>mo", "<cmd>lua require('mini.map').open()<cr>", desc = "MiniMap open" },
      { "<leader>mc", "<cmd>lua require('mini.map').close()<cr>", desc = "MiniMap close" },
      { "<leader>mt", "<cmd>lua require('mini.map').toggle()<cr>", desc = "MiniMap toggle" },
      { "<leader>mr", "<cmd>lua require('mini.map').refresh()<cr>", desc = "MiniMap refresh" },
    },
    cmd = "MiniMap",
  },
}