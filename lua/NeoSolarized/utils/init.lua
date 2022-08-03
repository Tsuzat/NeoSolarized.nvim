local M = {}

function M.default_settings()
	-- default settings function
	local settings = {
		NeoSolarized_visibility = 'normal',
		NeoSolarized_diffmode = 'normal',
		NeoSolarized_termtrans = 0,
		NeoSolarized_statusline = 'normal',
		NeoSolarized_italics = 1,
		NeoSolarized_lineNr = 1,
	}

	for key,val in pairs(settings) do
		if vim.g[key] == nil then
			vim.g[key] = val
		end
	end
end

function M.highlighter(group, colors)
	-- setup funtion
	colors.guisp = colors.guisp or 'none'
	colors.style = colors.style or 'none'
	colors.bg = colors.bg or {'none', 'none'}
	local g_foreground = colors.fg[1]
	local c_foreground = colors.fg[2]
	local g_background = colors.bg[1]
	local c_background = colors.bg[2]
	local guisp = colors.guisp[1] or 'none'
	local style = colors.style or 'none'
	vim.cmd(string.format(
	'hi %s guifg=%s guibg=%s guisp=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
	group, g_foreground, g_background, guisp, style, c_foreground, c_background, style
	))
end

-- italics and termtrans functions

function M.italics()
	if vim.g.NeoSolarized_italics == 1 then
		return 'italic'
	else
		return 'none'
	end
end

function M.termtrans(color)
	if vim.g.NeoSolarized_termtrans == 1 then
		return {'none', 'none'}
	else
		return color
	end
end

function M.lineNr(color)
	if vim.g.NeoSolarized_lineNr == 0 then
		return {'none', 'none'}
	else
		return color
	end
end

return M
