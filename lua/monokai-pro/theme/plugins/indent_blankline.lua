local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
function M.get(c, config, _)
  -- pro | default
  local isContextPro = config.plugins.indent_blankline.context_highlight == "pro"
  local isContextStartUnderline = config.plugins.indent_blankline.context_start_underline
  return {
    -- indent-blankline (ibl) v3
    IblIndent = { fg = c.editorIndentGuide.background },
    IblWhitespace = { fg = c.editor.background },
    IblSpace = isContextPro and { fg = c.base.blue } or {
      fg = c.editorIndentGuide.activeBackground,
    },
    -- indent-blankline v2
    IndentBlanklineChar = { fg = c.editorIndentGuide.background },
    IndentBlanklineSpaceChar = { fg = c.editor.background },
    IndentBlanklineSpaceCharBlankline = { fg = c.editor.background },
    IndentBlanklineContextChar = isContextPro and { fg = c.base.blue } or {
      fg = c.editorIndentGuide.activeBackground,
    },
    IndentBlanklineContextSpaceChar = isContextPro and { fg = c.base.blue } or {
      fg = c.editorIndentGuide.activeBackground,
    },
  }
end

return M
