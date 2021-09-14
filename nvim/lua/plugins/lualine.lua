-----------------------------------------------------------
-- Statusline configuration file
-----------------------------------------------------------

-- Plugin: lualine
--- https://github.com/hoob3rt/lualine.nvim
require('lualine').setup {
  options = {
    theme = 'material-nvim',
    icons_enabled = true,
    extensions = {'nvim-tree'},
  };
}
