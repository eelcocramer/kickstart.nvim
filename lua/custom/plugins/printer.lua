return {
  'rareitems/printer.nvim',
  config = function()
    require('printer').setup {
      keymap = 'gp', -- Plugin doesn't have any keymaps by default
    }
    -- keymap to always yank the debug print
    vim.keymap.set('n', 'gp', '<Plug>(printer_yank)')
    vim.keymap.set('v', 'gp', '<Plug>(printer_yank)')

    -- keymap to always insert below the debug print
    vim.keymap.set('n', 'gp', '<Plug>(printer_below)')
    vim.keymap.set('v', 'gp', '<Plug>(printer_below)')
  end,
}
