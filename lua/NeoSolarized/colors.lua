local M = {}

-- @class Dark Color Pallette
M.dark = {
  bg0              = '#002b36',
  bg1              = '#073642',
  bg2              = '#002b36',
  bg3              = '#002b36',
  bg4              = '#002b36',
  bg5              = '#002b36',
  bg_statusline1   = '#073642',
  bg_statusline2   = '#073642',
  bg_statusline3   = '#073642',
  bg_diff_green    = '#002b36',
  bg_visual_green  = '#002b36',
  bg_diff_red      = '#002b36',
  bg_visual_red    = '#002b36',
  bg_diff_blue     = '#002b36',
  bg_visual_blue   = '#002b36',
  bg_visual_yellow = '#002b36',
  bg_current_word  = '#073642',
  fg0              = '#839496',
  fg1              = '#657b83',
  fg2              = '#586e75',
  base1            = '#93a1a1',
  base2            = '#eee8d5',
  base3            = '#fdf6e3',
  red              = '#dc322f',
  orange           = '#cb4b16',
  yellow           = '#b58900',
  green            = '#859900',
  aqua             = '#2aa198',
  blue             = '#268bd2',
  purple           = '#d33682',
  voilet           = '#6c71c4',
  bg_red           = '#da0000',
  bg_green         = '#859000',
  bg_yellow        = '#b59900',
}

-- @class Light Color Pallette
M.light = {
  bg0              = '#fdf6e3',
  bg1              = '#073642',
  bg2              = '#fdf6e3',
  bg3              = '#fdf6e3',
  bg4              = '#fdf6e3',
  bg5              = '#fdf6e3',
  bg_statusline1   = '#073642',
  bg_statusline2   = '#073642',
  bg_statusline3   = '#073642',
  bg_diff_green    = '#fdf6e3',
  bg_visual_green  = '#fdf6e3',
  bg_diff_red      = '#fdf6e3',
  bg_visual_red    = '#fdf6e3',
  bg_diff_blue     = '#fdf6e3',
  bg_visual_blue   = '#fdf6e3',
  bg_visual_yellow = '#fdf6e3',
  bg_current_word  = '#073642',
  fg0              = '#002b36',
  fg1              = '#839496',
  fg2              = '#657b83',
  base1            = '#93a1a1',
  base2            = '#eee8d5',
  base3            = '#fdf6e3',
  red              = '#dc322f',
  orange           = '#cb4b16',
  yellow           = '#b58900',
  green            = '#859900',
  aqua             = '#2aa198',
  blue             = '#268bd2',
  purple           = '#d33682',
  voilet           = '#6c71c4',
  bg_red           = '#da0000',
  bg_green         = '#859000',
  bg_yellow        = '#b59900',
}

function M.setup(opts)
  opts = opts or {}
  local palette = M.dark; -- Default Pallette is Dark Pallette
  if require("NeoSolarized.config").is_day() then
    palette = M.light -- Switch to Light Pallette
  end
  if type(palette) == "function" then
    palette = palette()
  end
  return palette
end

return M;
