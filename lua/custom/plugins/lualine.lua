return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'alabaster', -- 'monet', -- github_dark',
      component_separators = '|',
      section_separators = '',
    },
    sections = {
      lualine_a = {
        {
          'buffers',
          show_filename_only = true, -- Shows shortened relative path when set to false.
          hide_filename_extension = false, -- Hide filename extension when set to true.
          show_modified_status = true, -- Shows indicator when the buffer is modified.
          mode = 2, -- 0: Shows buffer name
          -- 1: Shows buffer index
          -- 2: Shows buffer name + buffer index
          -- 3: Shows buffer number
          -- 4: Shows buffer name + buffer number

          max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
          -- it can also be a function that returns
          -- the value of `max_length` dynamically.
          --
          use_mode_colors = true,
        },
      },
    },
  },
}
