-- -----------------------------------------------------------------------------
-- Name:           NeoSolarized
-- Description:    NeoSolarized With Full Lua
-- Author:         Alok Singh
-- Website:        https://github.com/Tsuzat/NeoSolarized.nvim
-- License:        MIT
-- -----------------------------------------------------------------------------

vim.g.colors_name = 'NeoSolarized'
local NeoSolarized = require('NeoSolarized.highlights')
local lightColors = {
	back    = {'#fdf6e3',231},
	base0   = {'#657b83',103},
	base00  = {'#839496',145},
	base01  = {'#93a1a1',145},
	base02  = {'#eee8d5',230},
	base03  = {'#fdf6e3',231},
	base1   = {'#586e75',102},
	base2   = {'#073642',23},
	base3   = {'#002b36',23},
	blue    = {'#268bd2',38},
	cyan    = {'#2aa198',37},
	err_bg  = {'#fdf6e3',231},
	green   = {'#859900',142},
	magenta = {'#d33682',169},
	none    = {'none', 'none'},
	orange  = {'#cb4b16',166},
	red     = {'#dc322f',203},
	violet  = {'#6c71c4',104},
	yellow  = {'#b58900',178},
}
local darkColors = {
	back    = {'#002b36',23},
	base0   = {'#839496',145},
	base00  = {'#657b83',103},
	base01  = {'#586e75',102},
	base02  = {'#073642',23},
	base03  = {'#002b36',23},
	base1   = {'#93a1a1',145},
	base2   = {'#eee8d5',230},
	base3   = {'#fdf6e3',231},
	blue    = {'#268bd2',38},
	cyan    = {'#2aa198',37},
	err_bg  = {'#fdf6e3',231},
	green   = {'#859900',142},
	magenta = {'#d33682',169},
	none    = {'none', 'none'},
	orange  = {'#cb4b16',166},
	red     = {'#dc322f',203},
	violet  = {'#6c71c4',104},
	yellow  = {'#b58900',178},
}

if vim.o.bg == 'light' then
	NeoSolarized.load_syntax(lightColors)
	NeoSolarized.terminal_colors(lightColors)
end

if vim.o.bg == 'dark' then
	NeoSolarized.load_syntax(darkColors)
	NeoSolarized.terminal_colors(darkColors)
end
