local M = {}
local colors = require("NeoSolarized.colors")
function M.setup()
  local config = require("NeoSolarized.config")
  local options = config.options
  local theme = { config = options,
    colors = colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {
    Foo = { bg = c.purple, fg = c.purple },
    Comment = { fg = c.bg1, style = options.styles.comments }, -- any comment
    ColorColumn = { bg = c.blue }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.bg1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.bg_current_word, bg = c.fg0 }, -- character under the cursor
    lCursor = { fg = c.bg0, bg = c.fg0 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.bg0, bg = c.fg0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = c.none }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.bg_current_word }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd = { bg = c.green }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.voilet }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.red }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.bg1 }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    ErrorMsg = { fg = c.red }, -- error messages on the command line
    VertSplit = { fg = c.base1 }, -- the column separating vertically split windows
    WinSeparator = { fg = c.base2, bold = true }, -- the column separating vertically split windows
    Folded = { fg = c.blue, bg = c.bg1 }, -- line used for closed folds
    FoldColumn = { bg = options.transparent and c.none or c.bg0, fg = c.bg1 }, -- 'foldcolumn'
    SignColumn = { bg = options.transparent and c.none or c.bg0, fg = c.bg1 }, -- column where |signs| are displayed
    SignColumnSB = { bg = c.bg0, fg = c.bg1 }, -- column where |signs| are displayed
    Substitute = { bg = c.red, fg = c.bg0 }, -- |:substitute| replacement text highlighting
    LineNr = { bg = options.lineNr and c.none or c.bg1, fg = c.fg1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.base2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg2, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg2 }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue }, -- |more-prompt|
    NonText = { fg = c.bg1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- normal text
    NormalNC = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- normal text in non-current windows
    NormalSB = { fg = c.fg0, bg = c.bg0 }, -- normal text in sidebar
    NormalFloat = { fg = c.fg0, bg = options.transparent and c.none or c.bg1 }, -- Normal text in floating windows.
    FloatBorder = { fg = c.base1, bg = options.transparent and c.none or c.bg1 },
    Pmenu = { bg = options.transparent and c.none or c.bg1, fg = c.fg0 }, -- Popup menu: normal item.
    PmenuSel = { bg = c.fg2, fg = c.base3 }, -- Popup menu: selected item.
    PmenuSbar = { bg = options.transparent and c.none or c.bg1 }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = c.base1 }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.aqua, bold = true, undercurl = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = c.bg_green, fg = c.fg0 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = c.orange, fg = c.bg0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = c.fg2 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.blue, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.purple, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.green, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- status line of current window
    StatusLineNC = { fg = c.fg2, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { bg = c.bg_statusline1, fg = c.fg2 }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.bg0 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.bg0, bg = c.blue }, -- tab pages line, active tab page label
    Title = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.bg1 }, -- Visual mode selection
    VisualNOS = { bg = c.bg1 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.red }, -- warning messages
    Whitespace = { fg = c.fg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = c.bg1 }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant  = { fg = c.aqua }, -- (preferred) any constant
    String    = { fg = c.green, style = options.style.string }, --   a string constant: "this is a string"
    Character = { fg = c.green }, --  a character constant: 'c', '\n'
    Number    = { fg = c.purple }, --   a number constant: 234, 0xff
    Boolean   = { fg = c.purple }, --  a boolean constant: TRUE, false
    Float     = { fg = c.purple }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.blue, style = options.styles.variables }, -- (preferred) any variable name
    Function = { fg = c.green, style = options.styles.functions }, -- function name (also: methods for classes)

    Statement   = { fg = c.red, italic = options.enable_italics }, -- (preferred) any statement
    Conditional = { fg = c.red, italic = options.enable_italics }, --  if, then, else, endif, switch, etc.
    Repeat      = { fg = c.red, italic = options.enable_italics }, --   for, do, while, etc.
    Label       = { fg = c.orange }, --    case, default, etc.
    Operator    = { fg = c.orange }, -- "sizeof", "+", "*", etc.
    Keyword     = { fg = c.red, style = options.styles.keywords }, --  any other keyword
    Exception   = { fg = c.red, italic = options.enable_italics }, --  try, catch, throw

    PreProc      = { fg = c.purple, italic = options.enable_italics }, -- (preferred) generic Preprocessor
    PreCondit    = { fg = c.purple, italic = options.enable_italics },
    Include      = { fg = c.purple, italic = options.enable_italics }, --  preprocessor #include
    Define       = { fg = c.purple, italic = options.enable_italics }, --   preprocessor #define
    Macro        = { fg = c.aqua }, --    same as Define
    Type         = { fg = c.yellow }, -- (preferred) int, long, char, etc.
    StorageClass = { fg = c.orange }, -- static, register, volatile, etc.
    Structure    = { fg = c.orange }, --  struct, union, enum, etc.
    Typedef      = { fg = c.red, italic = options.enable_italics }, --  A typedef

    Special        = { fg = c.yellow }, -- (preferred) any special symbol
    SpecialChar    = { fg = c.yellow }, --  special character in a constant
    Tag            = { fg = c.orange }, --    you can use CTRL-] on this
    Delimiter      = { fg = c.fg0 }, --  character that needs attention
    SpecialComment = { fg = c.base1 }, -- special things inside a comment
    Debug          = { fg = c.orange }, --    debugging statements
    Underlined     = { style = options.style.underline }, -- (preferred) text that stands out, HTML links
    Bold           = { bold = true },
    Italic         = { italic = true },

    -- ("Ignore", below, may be invisible...)
    Ignore = { fg = c.base1 }, -- (preferred) left blank, hidden  |hl-Ignore|
    Error = { fg = c.red }, -- (preferred) any erroneous construct
    Todo = { bg = c.bg_yellow, fg = c.bg0 }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = c.base1 },
    qfFileName = { fg = c.blue },

    -- HTML
    htmlH1 = { fg = c.red, bold = true },
    htmlH2 = { fg = c.orange, bold = true },
    htmlH3 = { fg = c.yellow, bold = true },
    htmlH4 = { fg = c.green, bold = true },
    htmlH5 = { fg = c.blue, bold = true },
    htmlH6 = { fg = c.purple, bold = true },
    htmlLink = { underline = true },
    htmlBold = { bold = true },
    htmlBoldUnderline = { underline = true, bold = true },
    htmlBoldItalics = { italic = true, bold = true },
    htmlBoldUnderlineItalic = { underline = true, italic = true, bold = true },
    htmlUnderline = { underline = true },
    htmlUnderlineItalic = { italic = true, underline = true },
    htmlItalic = { italic = true },

    mkdCodeDelimiter = { bg = c.bg0, fg = c.fg0 },

    -- MarkDown
    markdownH1 = { fg = c.red, bold = true },
    markdownH2 = { fg = c.orange, bold = true },
    markdownH3 = { fg = c.yellow, bold = true },
    markdownH4 = { fg = c.green, bold = true },
    markdownH5 = { fg = c.blue, bold = true },
    markdownH6 = { fg = c.purple, bold = true },
    markdownUrl = { fg = c.blue, underline = true },
    markdownItalic = { italic = true },
    markdownBold = { bold = true },
    markdownItalicDelimiter = { fg = c.base1, italic = true },
    markdownCode = { fg = c.green },
    markdownCodeBlock = { fg = c.aqua },
    markdownCodeDelimiter = { fg = c.aqua },
    markdownBlockquote = { fg = c.fg2 },
    markdownListMarker = { fg = c.red },
    markdownOrderedListMarker = { fg = c.red },
    markdownRule = { fg = c.purple },
    markdownHeadingRule = { fg = c.base1 },
    markdownUrlDelimiter = { fg = c.base1 },
    markdownLinkDelimiter = { fg = c.base1 },
    markdownLinkTextDelimiter = { fg = c.base1 },
    markdownHeadingDelimiter = { fg = c.base1 },
    markdownLinkText = { fg = c.purple },
    markdownUrlTitleDelimiter = { fg = c.base1 },
    markdownIdDeclaration = { link = "markdownLinkText" },
    markdownBoldDelimiter = { fg = c.base1 },
    markdownId = { fg = c.yellow },

    ["@punctuation.special.markdown"] = { fg = c.orange, bold = true },
    ["@text.literal.markdown_inline"] = { bg = c.bg0, fg = c.blue },

    -- Diagnostic
    RedSign = { fg = c.red },
    YellowSign = { fg = c.yellow },
    GreenSign = { fg = c.green },
    BlueSign = { fg = c.blue },
    VirtualTextWarning = { fg = c.yellow },
    VirtualTextError = { fg = c.red },
    VirtualTextInfo = { fg = c.blue },
    VirtualTextHint = { fg = c.green },
    ErrorFloat = { fg = c.red, bg = options.transparent and c.none or c.bg1 },
    WarningFloat = { fg = c.yellow, bg = options.transparent and c.none or c.bg1 },
    InfoFloat = { fg = c.blue, bg = options.transparent and c.none or c.bg1 },
    HintFloat = { fg = c.green, bg = options.transparent and c.none or c.bg1 },
    WinBarNC = { fg = c.base1 },
    DiagnosticFloatingError = { link = "ErrorFloat" },
    DiagnosticFloatingWarn = { link = "WarningFloat" },
    DiagnosticFloatingInfo = { link = "InfoFloat" },
    DiagnosticFloatingHint = { link = "HintFloat" },
    DiagnosticError = { link = "ErrorText" },
    DiagnosticWarn = { link = "WarningText" },
    DiagnosticInfo = { link = "InfoText" },
    DiagnosticHint = { link = "HintText" },
    DiagnosticVirtualTextError = { link = "VirtualTextError" },
    DiagnosticVirtualTextWarn = { link = "VirtualTextWarning" },
    DiagnosticVirtualTextInfo = { link = "VirtualTextInfo" },
    DiagnosticVirtualTextHint = { link = "VirtualTextHint" },
    DiagnosticUnderlineError = { link = "ErrorText" },
    DiagnosticUnderlineWarn = { link = "WarningText" },
    DiagnosticUnderlineInfo = { link = "InfoText" },
    DiagnosticUnderlineHint = { link = "HintText" },
    DiagnosticSignError = { link = "RedSign" },
    DiagnosticSignWarn = { link = "YellowSign" },
    DiagnosticSignInfo = { link = "BlueSign" },
    DiagnosticSignHiblue = { link = "GreenSign" },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspDiagnosticsFloatingError = { link = "DiagnosticFloatingError" },
    LspDiagnosticsFloatingWarning = { link = "DiagnosticFloatingWarn" },
    LspDiagnosticsFloatingInformation = { link = "DiagnosticFloatingInfo" },
    LspDiagnosticsFloatingHint = { link = "DiagnosticFloatingHint" },
    LspDiagnosticsDefaultError = { link = "DiagnosticError" },
    LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
    LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
    LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
    LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
    LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
    LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
    LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
    LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
    LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
    LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
    LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
    LspDiagnosticsSignError = { link = "DiagnosticSignError" },
    LspDiagnosticsSignWarning = { link = "DiagnosticSignWarn" },
    LspDiagnosticsSignInformation = { link = "DiagnosticSignInfo" },
    LspDiagnosticsSignHint = { link = "DiagnosticSignHint" },
    LspReferenceText = { link = "CurrentWord" },
    LspReferenceRead = { link = "CurrentWord" },
    LspReferenceWrite = { link = "CurrentWord" },
    LspCodeLens = { link = "VirtualTextInfo" },
    LspCodeLensSeparator = { link = "VirtualTextHint" },
    LspSignatureActiveParameter = { link = "Search" },
    TermCursor = { link = "Cursor" },
    healthError = { fg = c.red },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.yellow },
    ALEErrorSign = { link = "ErrorMsg" },
    ALEWarningSign = { link = "WarningMsg" },

    -- These highlight Groups are for Tree-sitter
    TSAnnotation = { fg = c.purple },
    TSAttribute = { fg = c.purple },
    TSBoolean = { fg = c.purple },
    TSCharacter = { fg = c.aqua },
    TSComment = { link = "Comment" },
    TSConditional = { fg = c.red },
    TSConstBuiltin = { fg = c.blue, italic = true },
    TSConstMacro = { fg = c.blue, italic = true },
    TSConstant = { fg = c.fg0 },
    TSConstructor = { fg = c.green, bold = true },
    TSException = { fg = c.red },
    TSField = { fg = c.green },
    TSFloat = { fg = c.purple },
    TSFuncBuiltin = { fg = c.green, bold = true },
    TSFuncMacro = { fg = c.green, bold = true },
    TSFunction = { fg = c.green, bold = true },
    TSInclude = { fg = c.red },
    TSKeyword = { fg = c.red },
    TSKeywordFunction = { fg = c.red },
    TSKeywordOperator = { fg = c.orange },
    TSLabel = { fg = c.orange },
    TSMethod = { fg = c.green, bold = true },
    TSNamespace = { fg = c.yellow, italic = true },
    TSNone = { fg = c.fg0 },
    TSNumber = { fg = c.purple },
    TSOperator = { fg = c.orange },
    TSParameter = { fg = c.fg0 },
    TSParameterReference = { fg = c.fg0 },
    TSProperty = { fg = c.fg0 },
    TSPunctBracket = { fg = c.fg0 },
    TSPunctDelimiter = { fg = c.base1 },
    TSPunctSpecial = { fg = c.blue },
    TSRepeat = { fg = c.red },
    TSStorageClass = { fg = c.orange },
    TSString = { fg = c.aqua },
    TSStringEscape = { fg = c.green },
    TSStringRegex = { fg = c.green },
    TSSymbol = { fg = c.fg0 },
    TSTag = { fg = c.orange },
    TSTagDelimiter = { fg = c.green },
    TSText = { fg = c.green },
    TSStrike = { fg = c.base1 },
    TSMath = { fg = c.blue },
    TSType = { fg = c.yellow },
    TSTypeBuiltin = { fg = c.yellow, italic = true },
    TSURI = { link = "markdownUrl" },
    TSVariable = { fg = c.fg0 },
    TSVariableBuiltin = { fg = c.blue, italic = true },

    -- TODO
    -- Lua
    -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

    -- ts-rainbow
    rainbowcol1 = { fg = c.red },
    rainbowcol2 = { fg = c.yellow },
    rainbowcol3 = { fg = c.green },
    rainbowcol4 = { fg = c.teal },
    rainbowcol5 = { fg = c.blue },
    rainbowcol6 = { fg = c.magenta },
    rainbowcol7 = { fg = c.purple },

    -- LspTrouble
    TroubleText = { fg = c.fg_dark },
    TroubleCount = { fg = c.magenta, bg = c.fg2 },
    TroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    -- Illuminate
    illuminatedWord = { bg = c.fg2 },
    illuminatedCurWord = { bg = c.fg2 },
    IlluminatedWordText = { bg = c.fg2 },
    IlluminatedWordRead = { bg = c.fg2 },
    IlluminatedWordWrite = { bg = c.fg2 },

    -- diff
    diffAdded = { fg = c.git.add },
    diffRemoved = { fg = c.git.delete },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.magenta },

    -- Neogit
    NeogitBranch = { fg = c.magenta },
    NeogitRemote = { fg = c.purple },
    NeogitHunkHeader = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight = { bg = c.fg2, fg = c.blue },
    NeogitDiffContextHighlight = { bg = util.darken(c.fg2, 0.5), fg = c.fg_dark },
    NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },

    -- Neotest
    NeotestPassed = { fg = c.green },
    NeotestRunning = { fg = c.yellow },
    NeotestFailed = { fg = c.red },
    NeotestSkipped = { fg = c.blue },
    NeotestTest = { fg = c.fg_sidebar },
    NeotestNamespace = { fg = c.green2 },
    NeotestFocused = { fg = c.yellow },
    NeotestFile = { fg = c.teal },
    NeotestDir = { fg = c.blue },
    NeotestBorder = { fg = c.blue },
    NeotestIndent = { fg = c.fg_sidebar },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestAdapterName = { fg = c.purple, bold = true },
    NeotestWinSelect = { fg = c.blue },
    NeotestMarked = { fg = c.blue },
    NeotestTarget = { fg = c.blue },
    --[[ NeotestUnknown = {}, ]]

    -- GitGutter
    GitGutterAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeWinSeparator = {
      fg = options.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },
    NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.blue, bold = true },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeOpenedFile = { bg = c.bg_highlight },
    NvimTreeSpecialFile = { fg = c.purple, underline = true },
    NvimTreeIndentMarker = { fg = c.fg2 },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeSymlink = { fg = c.blue },
    NvimTreeFolderIcon = { bg = c.none, fg = c.yellow },
    -- NvimTreeFolderName= { fg = c.fg_float },

    NeoTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    -- Fern
    FernBranchText = { fg = c.blue },

    -- glyph palette
    GlyphPalette1 = { fg = c.red1 },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green1 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },

    -- Dashboard
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.magenta },
    DashboardFooter = { fg = c.yellow, italic = true },

    -- Alpha
    AlphaShortcut = { fg = c.cyan },
    AlphaHeader = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter = { fg = c.yellow, italic = true },
    AlphaButtons = { fg = c.magenta },

    -- WhichKey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.comment },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.dark5 },

    -- LspSaga
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.bg_float },
    LspFloatWinBorder = { fg = c.border_highlight },
    LspSagaBorderTitle = { fg = c.cyan },
    LspSagaHoverBorder = { fg = c.blue },
    LspSagaRenameBorder = { fg = c.green },
    LspSagaDefPreviewBorder = { fg = c.green },
    LspSagaCodeActionBorder = { fg = c.blue },
    LspSagaFinderSelection = { fg = c.bg_visual },
    LspSagaCodeActionTitle = { fg = c.blue1 },
    LspSagaCodeActionContent = { fg = c.purple },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount = { fg = c.purple },
    DefinitionCount = { fg = c.purple },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.cyan },


    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.git.change },

    -- Barbar
    BufferCurrent = { bg = c.fg2, fg = c.fg },
    BufferCurrentIndex = { bg = c.fg2, fg = c.info },
    BufferCurrentMod = { bg = c.fg2, fg = c.warning },
    BufferCurrentSign = { bg = c.fg2, fg = c.info },
    BufferCurrentTarget = { bg = c.fg2, fg = c.red },
    BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    BufferInactive = { bg = c.bg_statusline, fg = c.dark5 },
    BufferInactiveIndex = { bg = c.bg_statusline, fg = c.dark5 },
    BufferInactiveMod = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    BufferInactiveSign = { bg = c.bg_statusline, fg = c.border_highlight },
    BufferInactiveTarget = { bg = c.bg_statusline, fg = c.red },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },
    BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },

    -- Sneak
    Sneak = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.bg_visual },

    -- Hop
    HopNextKey = { fg = c.magenta2, bold = true },
    HopNextKey1 = { fg = c.blue2, bold = true },
    HopNextKey2 = { fg = util.darken(c.blue2, 0.6) },
    HopUnmatched = { fg = c.dark3 },

    TSNodeKey = { fg = c.magenta2, bold = true },
    TSNodeUnmatched = { fg = c.dark3 },

    LeapMatch = { bg = c.magenta2, fg = c.fg, bold = true },
    LeapLabelPrimary = { fg = c.magenta2, bold = true },
    LeapLabelSecondary = { fg = c.green1, bold = true },
    LeapBackdrop = { fg = c.dark3 },

    LightspeedGreyWash = { fg = c.dark3 },
    -- LightspeedCursor = { link = "Cursor" },
    LightspeedLabel = { fg = c.magenta2, bold = true, underline = true },
    LightspeedLabelDistant = { fg = c.green1, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.green2, underline = true },
    LightspeedLabelOverlapped = { fg = c.magenta2, underline = true },
    LightspeedMaskedChar = { fg = c.orange },
    LightspeedOneCharMatch = { bg = c.magenta2, fg = c.fg, bold = true },
    LightspeedPendingOpArea = { bg = c.magenta2, fg = c.fg },
    LightspeedShortcut = { bg = c.magenta2, fg = c.fg, bold = true, underline = true },
    -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
    -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedUnlabeledMatch = { fg = c.blue2, bold = true },

    -- Cmp
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.fg2, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.blue1, bg = c.none },

    CmpItemMenu = { fg = c.comment, bg = c.none },

    CmpItemKindDefault = { fg = c.fg_dark, bg = c.none },

    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

    CmpItemKindVariable = { fg = c.magenta, bg = c.none },
    CmpItemKindConstant = { fg = c.magenta, bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },

    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },

    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },

    CmpItemKindModule = { fg = c.yellow, bg = c.none },

    CmpItemKindProperty = { fg = c.green1, bg = c.none },
    CmpItemKindField = { fg = c.green1, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
    CmpItemKindOperator = { fg = c.green1, bg = c.none },
    CmpItemKindSnippet = { fg = c.dark5, bg = c.none },

    -- navic
    NavicIconsFile = { fg = c.fg, bg = c.none },
    NavicIconsModule = { fg = c.yellow, bg = c.none },
    NavicIconsNamespace = { fg = c.fg, bg = c.none },
    NavicIconsPackage = { fg = c.fg, bg = c.none },
    NavicIconsClass = { fg = c.orange, bg = c.none },
    NavicIconsMethod = { fg = c.blue, bg = c.none },
    NavicIconsProperty = { fg = c.green1, bg = c.none },
    NavicIconsField = { fg = c.green1, bg = c.none },
    NavicIconsConstructor = { fg = c.orange, bg = c.none },
    NavicIconsEnum = { fg = c.orange, bg = c.none },
    NavicIconsInterface = { fg = c.orange, bg = c.none },
    NavicIconsFunction = { fg = c.blue, bg = c.none },
    NavicIconsVariable = { fg = c.magenta, bg = c.none },
    NavicIconsConstant = { fg = c.magenta, bg = c.none },
    NavicIconsString = { fg = c.green, bg = c.none },
    NavicIconsNumber = { fg = c.orange, bg = c.none },
    NavicIconsBoolean = { fg = c.orange, bg = c.none },
    NavicIconsArray = { fg = c.orange, bg = c.none },
    NavicIconsObject = { fg = c.orange, bg = c.none },
    NavicIconsKey = { fg = c.purple, bg = c.none },
    NavicIconsKeyword = { fg = c.purple, bg = c.none },
    NavicIconsNull = { fg = c.orange, bg = c.none },
    NavicIconsEnumMember = { fg = c.green1, bg = c.none },
    NavicIconsStruct = { fg = c.orange, bg = c.none },
    NavicIconsEvent = { fg = c.orange, bg = c.none },
    NavicIconsOperator = { fg = c.fg, bg = c.none },
    NavicIconsTypeParameter = { fg = c.green1, bg = c.none },
    NavicText = { fg = c.fg, bg = c.none },
    NavicSeparator = { fg = c.fg, bg = c.none },

    IndentBlanklineChar = { fg = c.fg2, nocombine = true },
    IndentBlanklineContextChar = { fg = c.purple, nocombine = true },

    -- Scrollbar
    ScrollbarHandle = { fg = c.none, bg = c.bg_highlight },

    ScrollbarSearchHandle = { fg = c.orange, bg = c.bg_highlight },
    ScrollbarSearch = { fg = c.orange, bg = c.none },

    ScrollbarErrorHandle = { fg = c.error, bg = c.bg_highlight },
    ScrollbarError = { fg = c.error, bg = c.none },

    ScrollbarWarnHandle = { fg = c.warning, bg = c.bg_highlight },
    ScrollbarWarn = { fg = c.warning, bg = c.none },

    ScrollbarInfoHandle = { fg = c.info, bg = c.bg_highlight },
    ScrollbarInfo = { fg = c.info, bg = c.none },

    ScrollbarHintHandle = { fg = c.hint, bg = c.bg_highlight },
    ScrollbarHint = { fg = c.hint, bg = c.none },

    ScrollbarMiscHandle = { fg = c.purple, bg = c.bg_highlight },
    ScrollbarMisc = { fg = c.purple, bg = c.none },

    -- Yanky
    YankyPut = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },

    -- Notify
    --- Border
    NotifyERRORBorder = { fg = util.darken(c.error, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyWARNBorder = { fg = util.darken(c.warning, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyINFOBorder = { fg = util.darken(c.info, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = util.darken(c.comment, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = util.darken(c.purple, 0.3), bg = options.transparent and c.none or c.bg },
    --- Icons
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.comment },
    NotifyTRACEIcon = { fg = c.purple },
    --- Title
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.comment },
    NotifyTRACETitle = { fg = c.purple },
    --- Body
    NotifyERRORBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyWARNBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyINFOBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyTRACEBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },

    -- Mini
    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { bg = c.fg2 },
    MiniCursorwordCurrent = { bg = c.fg2 },

    MiniIndentscopeSymbol = { fg = c.blue1 },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump = { bg = c.magenta2, fg = "#ffffff" },

    MiniJump2dSpot = { fg = c.magenta2, bold = true, nocombine = true },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = c.yellow, italic = true },
    MiniStarterHeader = { fg = c.blue },
    MiniStarterInactive = { fg = c.comment, style = options.styles.comments },
    MiniStarterItem = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.border_highlight },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterSection = { fg = c.blue1 },
    MiniStarterQuery = { fg = c.info },

    MiniStatuslineDevinfo = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineFileinfo = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineFilename = { fg = c.fg_dark, bg = c.fg2 },
    MiniStatuslineInactive = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther = { fg = c.black, bg = c.teal, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.black, bg = c.magenta, bold = true },

    MiniSurround = { bg = c.orange, fg = c.black },

    MiniTablineCurrent = { fg = c.fg, bg = c.fg2 },
    MiniTablineFill = { bg = c.black },
    MiniTablineHidden = { fg = c.dark5, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg2 },
    MiniTablineModifiedHidden = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection = { bg = c.bg_statusline, fg = c.none },
    MiniTablineVisible = { fg = c.fg, bg = c.bg_statusline },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },

    MiniTrailspace = { bg = c.red },

    -- Noice

    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },

    NoiceCompletionItemKindKeyword = { fg = c.cyan, bg = c.none },

    NoiceCompletionItemKindVariable = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindConstant = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindReference = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindValue = { fg = c.magenta, bg = c.none },

    NoiceCompletionItemKindFunction = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindMethod = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindConstructor = { fg = c.blue, bg = c.none },

    NoiceCompletionItemKindClass = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindInterface = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindStruct = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEvent = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEnum = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindUnit = { fg = c.orange, bg = c.none },

    NoiceCompletionItemKindModule = { fg = c.yellow, bg = c.none },

    NoiceCompletionItemKindProperty = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindField = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindTypeParameter = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindEnumMember = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindOperator = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindSnippet = { fg = c.dark5, bg = c.none },
  }

  if not vim.diagnostic then
    local severity_map = {
      Error = "Error",
      Warn = "Warning",
      Info = "Information",
      Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
      for snew, sold in pairs(severity_map) do
        theme.highlights["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end

    -- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  options.on_highlights(theme.highlights, theme.colors)

  if config.is_day() then
    util.invert_colors(theme.colors)
    util.invert_highlights(theme.highlights)
  end

  return theme
end

return M
