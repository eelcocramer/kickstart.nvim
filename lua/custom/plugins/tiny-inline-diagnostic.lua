return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'VeryLazy',
  config = function()
    vim.opt.updatetime = 100
    vim.diagnostic.config { virtual_text = false }
    require('tiny-inline-diagnostic').setup()

    -- disable inline lsp lines
    --vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    -- virtual_text = false,
    --})
  end,
}
