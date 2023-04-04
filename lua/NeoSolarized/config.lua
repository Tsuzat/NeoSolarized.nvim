local M = {}

local defaults = {
  style = "dark",         -- "dark" or "light"
  transparent = true,     -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = true,  -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true,
    undercurl = true,
  },
  -- Add specific hightlight groups
  on_highlights = function(highlights, colors)
  end,
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
  if M.options.transparent and M.options.style == "light" then
    print(
      "NeoSolarized does not support transparent mode in Light theme. Switching Back to dark theme with transparent mode.")
    M.options.style = "dark"
    M.options.transparent = true
  end
end

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

function M.is_day()
  return M.options.style == "light" and M.options.transparent == false or vim.o.background == "light"
end

M.setup()

return M
