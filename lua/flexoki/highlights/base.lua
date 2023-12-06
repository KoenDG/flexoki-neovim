local palette = require('flexoki.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["Normal"]         = { fg = c.fg,            bg = c.bg },
		["SignColumn"]     = { fg = 'NONE',          bg = c.bg },
		["MsgArea"]        = { fg = c.fg,            bg = c.bg },
		["ModeMsg"]        = { fg = c.fg,            bg = c.dark },
		["MsgSeparator"]   = { fg = c.fg,            bg = c.bg },
		["SpellBad"]       = { fg = c.light_red,     bg = 'NONE',        underline = true, },
		["SpellCap"]       = { fg = c.yellow,        bg = 'NONE',        underline = true, },
		["SpellLocal"]     = { fg = c.green,         bg = 'NONE',        underline = true, },
		["SpellRare"]      = { fg = c.purple,        bg = 'NONE',        underline = true, },
		["NormalNC"]       = { fg = c.fg,            bg = c.bg },
		["Pmenu"]          = { fg = c.light_gray,    bg = c.tree_gray,   sp        = 'NONE',    blend = 50, },
		["PmenuSel"]       = { fg = 'NONE',          bg = c.ui2_blue },
		["WildMenu"]       = { fg = c.fg,            bg = c.ui2_blue },
		["CursorLineNr"]   = { fg = c.light_gray,    bg = 'NONE',        bold      = true,      },
		["Comment"]        = { fg = c.gray,          bg = 'NONE',        italic    = true,    },
		["Folded"]         = { fg = c.accent,        bg = c.alt_bg },
		["FoldColumn"]     = { fg = c.accent,        bg = c.alt_bg },
		["LineNr"]         = { fg = c.gray,          bg = 'NONE' },
		["FloatBorder"]    = { fg = c.gray,          bg = c.alt_bg },
		["Whitespace"]     = { fg = c.bg,            bg = 'NONE' },
		["VertSplit"]      = { fg = c.gray,          bg = c.bg },
		["CursorLine"]     = { fg = 'NONE',          bg = c.dark },
		["CursorColumn"]   = { fg = 'NONE',          bg = c.dark },
		["ColorColumn"]    = { fg = 'NONE',          bg = c.dark },
		["NormalFloat"]    = { fg = 'NONE',          bg = c.dark },
		["Visual"]         = { fg = 'NONE',          bg = c.ui_blue },
		["VisualNOS"]      = { fg = 'NONE',          bg = c.alt_bg },
		["WarningMsg"]     = { fg = c.error_red,     bg = c.bg },
		["DiffAdd"]        = { fg = c.alt_bg,        bg = c.sign_add },
		["DiffChange"]     = { fg = c.alt_bg,        bg = c.sign_change, underline = true, },
		["DiffDelete"]     = { fg = c.alt_bg,        bg = c.sign_delete },
		["QuickFixLine"]   = { fg = 'NONE',          bg = c.ui2_blue },
		["PmenuSbar"]      = { fg = 'NONE',          bg = c.alt_bg },
		["PmenuThumb"]     = { fg = 'NONE',          bg = c.gray },
		["MatchWord"]      = { fg = 'NONE',          bg = 'NONE',        underline = true, },
		["MatchParen"]     = { fg = c.hint_blue,     bg = c.bg,          underline = true, },
		["MatchWordCur"]   = { fg = 'NONE',          bg = 'NONE',        underline = true, },
		["MatchParenCur"]  = { fg = 'NONE',          bg = 'NONE',        underline = true, },
		["Cursor"]         = { fg = c.cursor_fg,     bg = c.cursor_bg },
		["lCursor"]        = { fg = c.cursor_fg,     bg = c.cursor_bg },
		["CursorIM"]       = { fg = c.cursor_fg,     bg = c.cursor_bg },
		["TermCursor"]     = { fg = c.cursor_fg,     bg = c.cursor_bg },
		["TermCursorNC"]   = { fg = c.cursor_fg,     bg = c.cursor_bg },
		["Conceal"]        = { fg = c.accent,        bg = 'NONE' },
		["Directory"]      = { fg = c.blue,          bg = 'NONE' },
		["SpecialKey"]     = { fg = c.blue,          bg = 'NONE',        bold      = true,      },
		["Title"]          = { fg = c.blue,          bg = 'NONE',        bold      = true,      },
		["ErrorMsg"]       = { fg = c.error_red,     bg = c.bg,          bold      = true,      },
		["Search"]         = { fg = c.light_gray,    bg = c.search_blue },
		["IncSearch"]      = { fg = c.search_orange, bg = c.light_gray },
		["Substitute"]     = { fg = c.light_gray,    bg = c.search_orange },
		["MoreMsg"]        = { fg = c.orange,        bg = 'NONE' },
		["Question"]       = { fg = c.orange,        bg = 'NONE' },
		["EndOfBuffer"]    = { fg = c.bg,            bg = 'NONE' },
		["NonText"]        = { fg = c.bg,            bg = 'NONE' },
		["Variable"]       = { fg = c.light_blue,    bg = 'NONE' },
		["String"]         = { fg = c.orange,        bg = 'NONE' },
		["Character"]      = { fg = c.orange,        bg = 'NONE' },
		["Constant"]       = { fg = c.vivid_blue,    bg = 'NONE' },
		["Number"]         = { fg = c.light_green,   bg = 'NONE' },
		["Boolean"]        = { fg = c.blue,          bg = 'NONE' },
		["Float"]          = { fg = c.light_green,   bg = 'NONE' },
		["Identifier"]     = { fg = c.light_blue,    bg = 'NONE' },
		["Function"]       = { fg = c.yellow,        bg = 'NONE' },
		["Operator"]       = { fg = c.fg,            bg = 'NONE' },
		["Type"]           = { fg = c.cyan,          bg = 'NONE' },
		["StorageClass"]   = { fg = c.blue,          bg = 'NONE' },
		["Structure"]      = { fg = c.blue,          bg = 'NONE' },
		["Typedef"]        = { fg = c.blue,          bg = 'NONE' },
		["Keyword"]        = { fg = c.blue,          bg = 'NONE' },
		["Statement"]      = { fg = c.purple,        bg = 'NONE' },
		["Conditional"]    = { fg = c.blue,          bg = 'NONE' },
		["Repeat"]         = { fg = c.purple,        bg = 'NONE' },
		["Label"]          = { fg = c.purple,        bg = 'NONE' },
		["Exception"]      = { fg = c.purple,        bg = 'NONE' },
		["Include"]        = { fg = c.purple,        bg = 'NONE' },
		["PreProc"]        = { fg = c.purple,        bg = 'NONE' },
		["Define"]         = { fg = c.purple,        bg = 'NONE' },
		["Macro"]          = { fg = c.purple,        bg = 'NONE' },
		["PreCondit"]      = { fg = c.purple,        bg = 'NONE' },
		["Special"]        = { fg = c.orange,        bg = 'NONE' },
		["SpecialChar"]    = { fg = c.white,         bg = 'NONE' },
		["Tag"]            = { fg = c.blue,          bg = 'NONE' },
		["Debug"]          = { fg = c.red,           bg = 'NONE' },
		["Delimiter"]      = { fg = c.gray,          bg = 'NONE' },
		["SpecialComment"] = { fg = c.gray,          bg = 'NONE' },
		["Underlined"]     = { fg = 'NONE',          bg = 'NONE',        underline = true, },
		["Bold"]           = { fg = 'NONE',          bg = 'NONE',        bold      = true,      },
		["Italic"]         = { fg = 'NONE',          bg = 'NONE',        italic    = true,    },
		["Ignore"]         = { fg = c.cyan,          bg = c.bg,          bold      = true,      },
		["Todo"]           = { fg = c.magenta,       bg = c.bg,          bold      = true,      },
		["Error"]          = { fg = c.error_red,     bg = c.bg,          bold      = true,      },
		["TabLine"]        = { fg = c.light_gray,    bg = c.line },
		["TabLineSel"]     = { fg = c.white,         bg = c.line },
		["TabLineFill"]    = { fg = c.line,          bg = c.line }
	}
end

return M