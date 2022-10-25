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

  --[[   -- vim.api.nvim_set_hl_ns(M.ns)
  if theme.config.terminal_colors then
    M.terminal(theme.colors)
  end ]]

  --[[ M.autocmds(theme.config) ]]

  vim.defer_fn(function()
    M.syntax(theme.defer)
  end, 100)
end

return M
