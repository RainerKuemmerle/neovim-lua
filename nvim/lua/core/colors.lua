-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

--[[
Set Neovim UI color scheme.
Note: The instruction to load the color scheme may vary depending on the
package.
See the README of color scheme (i.e. git package) for information, for
example: require('color_scheme').setup{}, vim.cmd('color_scheme').
--]]

-- Current available color schemes: catppuccin
local status_ok, color_scheme = pcall(require, 'catppuccin')
if not status_ok then
  return
end

-- Add the color scheme in the `require` values below.
-- e.g.: require('monokai').setup{}
require("catppuccin").setup({
  flavour = "frappe",
})
vim.cmd.colorscheme "catppuccin"

--[[
Statusline color schemes.

Return the selected color scheme in this file with: `return M.colorscheme_name`
where the color scheme name is the value of the variables below.

e.g.: `local colors = return M.onedark_dark`
The return value is also used by `core/statusline.lua`.
--]]
local M = {}

--[[
The color schemes below are created by following the "palette" file color
schemes. Color names are adapted to maintain a pattern, original names can be
different.
--]]

local frappe = require("catppuccin.palettes").get_palette "frappe"
M.frappe = {
  bg = frappe['surface0'],
  fg = frappe['text'],
  pink = frappe['teal'],
  green = frappe['green'],
  cyan = frappe['blue'],
  yellow = frappe['yellow'],
  orange = frappe['peach'],
  red = frappe['red'],
}

-- Current color scheme
return M.frappe
