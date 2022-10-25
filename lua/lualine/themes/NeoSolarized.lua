local light = require("NeoSolarized.config").is_day()
local palette = require("NeoSolarized.colors").dark

if light then
  palette = require("NeoSolarized.colors").light
end

local theme = {}

theme = {
  normal = {
    a = { bg = light and palette.base3 or palette.fg2, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  insert = {
    a = { bg = palette.bg_green, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  visual = {
    a = { bg = palette.bg_red, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  replace = {
    a = { bg = palette.bg_yellow, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  command = {
    a = { bg = palette.blue, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  terminal = {
    a = { bg = palette.purple, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  inactive = {
    a = { bg = palette.bg0, fg = palette.fg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
}

return theme
