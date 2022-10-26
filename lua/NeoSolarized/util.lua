local ts = require("NeoSolarized.treesitter")

local M = {}

M.bg = "#000000"
M.fg = "#ffffff"


function M.highlight(group, hl)
  group = ts.get(group)
  if not group then
    return
  end
  if hl.style then
    if type(hl.style) == "table" then
      hl = vim.tbl_extend("force", hl, hl.style)
    elseif hl.style:lower() ~= "none" then
      -- handle old string style definitions
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end
  vim.api.nvim_set_hl(0, group, hl)
end

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
end

function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.bg0
  vim.g.terminal_color_8 = colors.bg1

  -- light
  vim.g.terminal_color_7 = colors.fg0
  vim.g.terminal_color_15 = colors.fg1

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_13 = colors.purple

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

function M.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "NeoSolarized"

  if ts.new_style() then
    M.syntax(ts.defaults)
  end

  M.syntax(theme.highlights)

  if theme.config.terminal_colors then
    M.terminal(theme.colors)
  end

  vim.defer_fn(function()
    M.syntax(theme.defer)
  end, 100)
end

return M
