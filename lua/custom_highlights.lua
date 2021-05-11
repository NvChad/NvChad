local cmd = vim.cmd
-- blankline

cmd "hi IndentBlanklineChar guifg=#383c44"

-- misc --
cmd "hi LineNr guifg=#42464e"
cmd "hi Comment guifg=#42464e"
cmd "hi NvimInternalError guifg=#f9929b"
cmd "hi VertSplit guifg=#2a2e36"
cmd "hi EndOfBuffer guifg=#1e222a"

-- Pmenu
cmd "hi PmenuSel guibg=#98c379"
cmd "hi Pmenu  guibg=#282c34"
cmd "hi PmenuSbar guibg =#353b45"
cmd "hi PmenuThumb guibg =#81A1C1"

-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline guifg=#383c44")

-- line n.o
cmd "hi clear CursorLine"
cmd "hi cursorlinenr guifg=#abb2bf"

-- git signs ---
cmd "hi DiffAdd guifg=#81A1C1 guibg = none"
cmd "hi DiffChange guifg =#3A3E44 guibg = none"
cmd "hi DiffModified guifg = #81A1C1 guibg = none"

-- NvimTree
cmd "hi NvimTreeFolderIcon guifg = #61afef"
cmd "hi NvimTreeFolderName guifg = #61afef"
cmd "hi NvimTreeIndentMarker guifg=#383c44"
cmd "hi NvimTreeNormal guibg=#1b1f27"
cmd "hi NvimTreeVertSplit guifg=#1e222a"
cmd "hi NvimTreeRootFolder guifg=#f9929b"

-- telescope
cmd "hi TelescopeBorder   guifg=#2a2e36"
cmd "hi TelescopePromptBorder   guifg=#2a2e36"
cmd "hi TelescopeResultsBorder  guifg=#2a2e36"
cmd "hi TelescopePreviewBorder  guifg=#525865"

-- LspDiagnostics ---

-- error / warnings
cmd "hi LspDiagnosticsSignError guifg=#f9929b"
cmd "hi LspDiagnosticsVirtualTextError guifg=#BF616A"
cmd "hi LspDiagnosticsSignWarning guifg=#EBCB8B"
cmd "hi LspDiagnosticsVirtualTextWarning guifg=#EBCB8B"

-- info
cmd "hi LspDiagnosticsSignInformation guifg=#A3BE8C"
cmd "hi LspDiagnosticsVirtualTextInformation guifg=#A3BE8C"

-- hint
cmd "hi LspDiagnosticsSignHint guifg=#b6bdca"
cmd "hi LspDiagnosticsVirtualTextHint guifg=#b6bdca"
