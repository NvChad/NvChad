local cmd = vim.cmd
-- blankline

cmd "hi IndentBlanklineChar guifg=#282c34"

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
cmd("hi! StatusLineNC gui=underline guifg=#383c44")

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
cmd "hi NvimTreeRootFolder guifg=#1b1f27"

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

-- bufferline

local function add_hi(item, fg, bg)
    local buf_hi = "hi BufferLine" .. item .. " guifg=" .. fg .. " guibg=" .. bg

    if item == "BufferSelected" then
        vim.cmd(buf_hi .. " gui=bold")
    else
        vim.cmd(buf_hi)
    end
end

local function bufferline_colors()
    -- colors ---
    local fg = "#565c64"
    local bg = "#252931"

    -- active buffer
    local darkerBg = "#1e222a" -- nvim's bg
    local activeBuffer_fg = "#c8ccd4"

    -- unfocused opened buffer

    local grey_dark = "#9298a0"

    -- tabs
    local bg2 = "#30343c" -- should be lighter than bg
    local red = "#d47d85"

    -- modified buffers
    local green = "#A3BE8C"

    add_hi("Background", fg, bg)
    add_hi("Fill", fg, bg)

    add_hi("BufferSelected", activeBuffer_fg, darkerBg)
    add_hi("BufferVisible", grey_dark, bg)

    add_hi("Tab", grey_dark, bg2)
    add_hi("TabSelected", bg, "#81A1C1")
    add_hi("TabClose", red, bg)

    -- making separates transparent

    add_hi("Indicator", bg, bg)
    add_hi("IndicatorSelected", bg, bg)

    add_hi("Separator", bg, bg)
    add_hi("SeparatorVisible", bg, bg)
    add_hi("SeparatorSelected", darkerBg, darkerBg)

    -- modified buffers
    add_hi("Modified", red, bg)
    add_hi("ModifiedVisible", red, bg)
    add_hi("ModifiedSelected", green, darkerBg)
end

bufferline_colors()
