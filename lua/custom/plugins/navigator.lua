return {
  "ray-x/navigator.lua",
  dependencies = {
    'neovim/nvim-lspconfig',
    'ray-x/guihua.lua'
  },
  config = function()
    require 'navigator'.setup({
    })
  end
}
