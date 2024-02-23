local M = {}

-- @class Dark Color Palette
M.dark = {
  bg0         = '#002b36',
  bg1         = '#073642',
  bg2         = '#002b36',
  fg0         = '#839496',
  fg1         = '#657b83',
  fg2         = '#586e75',
  base1       = '#93a1a1',
  base2       = '#eee8d5',
  base3       = '#fdf6e3',
  red         = '#dc322f',
  orange      = '#cb4b16',
  yellow      = '#b58900',
  green       = '#859900',
  aqua        = '#2aa198',
  blue        = '#268bd2',
  purple      = '#d33682',
  violet      = '#6c71c4',
  bg_red      = '#da0000',
  bg_green    = '#859000',
  bg_yellow   = '#b59900',
  diff_add    = '#003200',
  diff_change = '#323200',
  diff_delete = '#320000',
  diff_text   = '#404000',
  none        = "NONE"
}

-- @class Light Color Palette
M.light = {
  bg0         = '#fdf6e3',
  bg1         = '#eee8d5',
  bg2         = '#fdf6e3',
  fg0         = '#002b36',
  fg1         = '#839496',
  fg2         = '#657b83',
  base1       = '#93a1a1',
  base2       = '#002b36',
  base3       = '#073642',
  red         = '#dc322f',
  orange      = '#cb4b16',
  yellow      = '#b58900',
  green       = '#859900',
  aqua        = '#2aa198',
  blue        = '#268bd2',
  purple      = '#d33682',
  violet      = '#6c71c4',
  bg_red      = '#da0000',
  bg_green    = '#859000',
  bg_yellow   = '#b59900',
  diff_add    = '#caffca',
  diff_change = '#ffffca',
  diff_delete = '#ffcaca',
  diff_text   = '#e8e8b3',
  none        = "NONE"
}

function M.setup(opts)
  opts = opts or {}
  local config = require("NeoSolarized.config")

  local palette = M.dark
  if config.is_day() then
    palette = M.light
  end
  if type(palette) == "function" then
    palette = palette()
  end
  return palette
end

return M
