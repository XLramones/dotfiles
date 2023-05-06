yungjcolors = {
  none = "NONE",
  fg = "#ffffff",
  -- bg = "#2c2836",
  -- bg = "#000000";
  bg = "#141022",
  black = "#181a1f",
  black_1 = "#1f1f25",
  white = "#ffffff",
  white_1 = "#afb2bb",
  white_2 = "#c9c9c9",
  grey = "#5c6370",
  grey_1 = "#4b5263",
  grey_2 = "#777d86",
  grey_3 = "#656c8c",
  grey_4 = "#1c121c",
  grey_5 = "#3e4452",
  grey_6 = "#3b4048",
  grey_7 = "#5c5c5c",
  grey_8 = "#252931",
  grey_9 = "#787e87",
  grey_10 = "#D3D3D3",
  green = "#29d9b9",
  green_1 = "#bdff42",
  green_2 = "#8acf94",
  green_3 = "#27ffc2",
  green_4 = "#afff5f",
  green_5 = "#09f080",
  blue = "#3D62F5",
  blue_1 = "#01ffff",
  blue_2 = "#A9D1DF",
  blue_3 = "#89acf9",
  orange = "#feffac",
  orange_1 = "#ff9640",
  orange_2 = "#ff8800",
  yellow = "#fcfb75",
  yellow_1 = "#e3dac9",
  yellow_2 = "#d1b071",
  yellow_3 = "#feffac",
  gold_1 = "#ffcc00",
  red = "#ff91d1",
  red_1 = "#ec5f67",
  red_2 = "#fcc2f3",
  red_3 = "#cc626a",
  red_4 = "#d47d85",
  red_5 = "#ff62ff",
  red_6 = "#ff01ff",
  red_7 = "#ff00a0",
  cyan = "#48c5b4",
  cyan_1 = "#56b6c2",
  cyan_2 = "#00a3a1",
  purple = "#b387e7",
  purple_1 = "#d86dff",
  purple_2 = "#c7c4ff",
  purple_3 = "#d8d1ff",
  purple_5 = "#7959B9",
};
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        [[                                ______________________]],
        [[                      __   __ .'                      `. __   __]],
        [[                      \//\    |                        |    /\\/]],
        [[                              :                        |]],
        [[                       |      .        _               :      |]],
        [[                       :         _____//               .      |]],
        [[                       . _       \   _~~\                     :]],
        [[                   __   //        \_//___\                    .  _]],
        [[         _       /\\/  _~   _______//___                    ____//]],
        [[        // ______     //    \     _~~   \           _       \  _~\]],
        [[        ~ _/'~   \  __~      `.__//______\     __  //      __\//__\]],
        [[         //_     /_(_/_  ._____ //  .______  /\\/ //    __/'~~~~\   __        __]],
        [[        ////    /_)  ~`\ _)  `\_~___ )`~  )_____  ~____ //      /\  \//\     //'\]],
        [[     _ / ~/_   //       /     _\~   /     \_    \ _)   / `-    /  \    ______\__/]],
        [[    (_\\  ~   /.\_     _\      \\   \      /     \\_   \       \  / __  //~   \]],
        [[       ~\__   ~  `__    \\      \____\._   ~   __/\/____\       \/ //`\/   .cn \/]],
        [[    __   \\_____/~\\____/\\__   __/\  \\_______/\\ \    \\__   __\ \__/\   CRO /]],
        [[    \//\  \\  _ \  >\   \ \\\___/\\ \__\\   _  \ \\/\____\\\___/\~\     \_____/_]],
        [[         ___\//__\/ ~`.__\/~\\  \ \\/   ~\_//___\/~__  __  \\  \ \_\     \   //~\]],
        [[         \  _~\         _    ~\__\/_______//___    \//\\/   ~`._\/           \__/]],
        [[          \//__\       //  __  __  \     _~~   \]],
        [[          //          //   \//\\/   \___//____.'    __ ___   _ ___   _ ___]],
        [[          ~          _~           _____//         _ /// /// ///_///\///_/// _]],
        [[                    // .          \   _~~\        \///_///_/// \ / /// ///_//]],
        [[                    ~              \_//___\]],
        [[                       :            //            \/\/\/\/\/\/\/\/\/\/\/\/\/\]],
        [[                       |      .    ~]],
        [[                       |      .                        .      |]],
        [[                        __    :                        .    __]],
        [[                      /\\/ __ |                        | __ \//\]],
        [[                              `.______________________.']]
      }
    end,
  },
  {
    "AstroNvim/astrotheme",
    config = function()
      require("astrotheme").setup({
        palette = "astrodark",
        termguicolors = true,
        terminal_color = true,
        plugin_default = "auto",
        palettes = {
          astrodark = {
            none = yungjcolors.none,
            fg = yungjcolors.fg,
            -- bg = "#2c2836",
            -- bg = "#000000";
            bg = yungjcolors.bg,
            black = yungjcolors.black,
            black_1 = yungjcolors.black_1,
            white = yungjcolors.white,
            white_1 = yungjcolors.white_1,
            white_2 = yungjcolors.white_2,
            grey = yungjcolors.grey,
            grey_1 = yungjcolors.grey_1,
            grey_2 = yungjcolors.grey_2,
            grey_3 = yungjcolors.grey_3,
            grey_4 = yungjcolors.grey_4,
            grey_5 = yungjcolors.grey_5,
            grey_6 = yungjcolors.grey_6,
            grey_7 = yungjcolors.grey_7,
            grey_8 = yungjcolors.grey_8,
            grey_9 = yungjcolors.grey_9,
            grey_10 = yungjcolors.grey_10,
            green = yungjcolors.green,
            green_1 = yungjcolors.green_1,
            green_2 = yungjcolors.green_2,
            green_3 = yungjcolors.green_3,
            green_4 = yungjcolors.green_4,
            green_5 = yungjcolors.green_5,
            blue = yungjcolors.blue,
            blue_1 = yungjcolors.blue_1,
            blue_2 = yungjcolors.blue_2,
            blue_3 = yungjcolors.blue_3,
            orange = yungjcolors.orange,
            orange_1 = yungjcolors.orange_1,
            orange_2 = yungjcolors.orange_2,
            yellow = yungjcolors.yellow,
            yellow_1 = yungjcolors.yellow_1,
            yellow_2 = yungjcolors.yellow_2,
            yellow_3 = yungjcolors.yellow_3,
            gold_1 = yungjcolors.gold_1,
            red = yungjcolors.red,
            red_1 = yungjcolors.red_1,
            red_2 = yungjcolors.red_2,
            red_3 = yungjcolors.red_3,
            red_4 = yungjcolors.red_4,
            red_5 = yungjcolors.red_5,
            red_6 = yungjcolors.red_6,
            red_7 = yungjcolors.red_7,
            cyan = yungjcolors.cyan,
            cyan_1 = yungjcolors.cyan_1,
            cyan_2 = yungjcolors.cyan_2,
            purple = yungjcolors.purple,
            purple_1 = yungjcolors.purple_1,
            purple_2 = yungjcolors.purple_2,
            purple_3 = yungjcolors.purple_3,
            purple_5 = yungjcolors.purple_5,
            -- astro colors
            dark_red = yungjcolors.red_1,
            light_blue = yungjcolors.blue_1,
            light_green = yungjcolors.green_2,
            dark_yellow = yungjcolors.gold_1,
            light_purple = yungjcolors.purple_2,
            light_cyan = yungjcolors.cyan_1,
            dark_orange = yungjcolors.orange_2,
            text = yungjcolors.fg,
            subtext1 = "#777d86",
            subtext0 = "#4b5263",
            overlay2 = "#282c34",
            overlay1 = "#2c323c",
            overlay0 = "#c9c9c9",
            surface2 = "#dedede",
            surface1 = "#3e4452",
            surface0 = yungjcolors.black,
            base = yungjcolors.bg,
            mantle = "#181a1f",
            crust = "#1f1f25",
            -- icon colors
            c = "#519aba",
            css = "#61afef",
            deb = "#a1b7ee",
            docker = "#384d54",
            html = "#de8c92",
            jpeg = "#c882e7",
            jpg = "#c882e7",
            js = "#ebcb8b",
            jsx = "#519ab8",
            kt = "#7bc99c",
            lock = "#c4c720",
            lua = "#51a0cf",
            mp3 = "#d39ede",
            mp4 = "#9ea3de",
            out = "#abb2bf",
            png = "#c882e7",
            py = "#a3b8ef",
            rb = "#ff75a0",
            robots = "#abb2bf",
            rpm = "#fca2aa",
            rs = "#dea584",
            toml = "#39bf39",
            ts = "#519aba",
            ttf = "#abb2bf",
            vue = "#7bc99c",
            woff = "#abb2bf",
            woff2 = "#abb2bf",
            zip = "#f9d71c",
            md = "#519aba",
            pkg = "#d39ede",
          },
        },
        highlights = {
          astrodark = {
            modify_hl_groups = function(hl, c)
              -- new i guess
              -- base
              hl.Normal = { fg = c.text, bg = c.base }
              hl.NormalNC = { fg = c.text, bg = c.mantle }
              hl.Title = { fg = c.cyan, bg = c.none }
              hl.Cursor = { fg = c.none, bg = c.none }
              hl.ColorColumn = { fg = c.none, bg = c.overlay1 }
              hl.CursorLineNr = { fg = c.text, bg = c.none }
              hl.Conceal = { fg = c.subtext0, bg = c.none }
              hl.CursorColumn = { fg = c.none, bg = c.overlay1 }
              hl.CursorLine = { fg = c.none, bg = c.surface0 }
              hl.Directory = { fg = c.blue, bg = c.none }
              hl.DiffAdd = { fg = c.overlay2, bg = c.green }
              hl.DiffChange = { fg = c.yellow, bg = c.none }
              hl.DiffDelete = { fg = c.overlay3, bg = c.red }
              hl.DiffText = { fg = c.overlay2, bg = c.yellow }
              hl.DiffAdded = { fg = c.green }
              hl.DiffRemoved = { fg = c.red }
              hl.DiffChanged = { fg = c.blue }
              hl.DiffOldFile = { fg = c.orange }
              hl.DiffNewFile = { fg = c.green }
              hl.DiffFile = { fg = c.blue }
              hl.DiffLine = { fg = c.overlay0 }
              hl.DiffIndexLine = { fg = c.cyan }
              hl.ErrorMsg = { fg = c.red, bg = c.none }
              hl.WinSeparator = { fg = c.overlay1, bg = c.none }
              hl.Folded = { fg = c.subtext0, bg = c.none }
              hl.FoldColumn = { fg = c.none, bg = c.none }
              hl.IncSearch = { fg = c.yellow, bg = c.subtext0 }
              hl.CurSearch = { link = "IncSearch" }
              hl.LineNr = { fg = c.subtext0, bg = c.none }
              hl.NonText = { fg = c.subtext0, bg = c.none }
              hl.Pmenu = { fg = c.text, bg = c.base }
              hl.PmenuSel = { fg = c.none, bg = c.overlay1 }
              hl.PmenuSbar = { fg = c.none, bg = c.overlay2 }
              hl.PmenuThumb = { fg = c.none, bg = c.text }
              hl.Question = { fg = c.purple, bg = c.none }
              hl.QuickFixLine = { fg = c.overlay2, bg = c.yellow }
              hl.Search = { fg = c.overlay2, bg = c.yellow }
              hl.SignColumn = { fg = c.none, bg = c.none }
              hl.SpecialKey = { fg = c.subtext0, bg = c.none }
              hl.SpellBad = { undercurl = true }
              hl.SpellCap = { undercurl = true }
              hl.SpellLocal = { undercurl = true }
              hl.SpellRare = { undercurl = true }
              hl.StatusLine = { fg = c.text, bg = c.overlay1 }
              hl.StatusLineNC = { fg = c.subtext0, bg = c.none }
              hl.StatusLineTerm = { fg = c.text, bg = c.overlay1 }
              hl.StatusLineTermNC = { fg = c.overlay1, bg = c.none }
              hl.StatusInactive = { fg = c.overlay1, bg = c.surface0 }
              hl.StatusNormal = { fg = c.overlay1, bg = c.blue }
              hl.StatusInsert = { fg = c.overlay1, bg = c.green }
              hl.StatusVisual = { fg = c.overlay1, bg = c.purple }
              hl.StatusReplace = { fg = c.overlay1, bg = c.dark_red }
              hl.StatusCommand = { fg = c.overlay1, bg = c.dark_yellow }
              hl.StatusTerminal = { link = "StatusInsert" }
              hl.WinBar = { fg = c.subtext1, bg = c.base }
              hl.WinBarNC = { fg = c.subtext0, bg = c.mantle }
              hl.TabLine = { fg = c.subtext0, bg = c.none }
              hl.TabLineSel = { fg = c.text, bg = c.none }
              hl.TabLineFill = { fg = c.none, bg = c.overlay2 }
              hl.Terminal = { fg = c.text, bg = c.overlay2 }
              hl.Visual = { fg = c.none, bg = c.surface1 }
              hl.VisualNOS = { fg = c.surface1, bg = c.none }
              hl.WarningMsg = { fg = c.yellow, bg = c.none }
              hl.WildMenu = { fg = c.overlay2, bg = c.blue }
              hl.EndOfBuffer = { fg = c.base, bg = c.none }
              hl.FloatBorder = { fg = c.surface1, bg = c.base }
              hl.MatchParen = { fg = c.none, bg = c.subtext0 }
              -- syntax
              --
              hl.Comment = { fg = c.subtext1, bg = c.none }                -- any comment
              -- Constant
              hl.Constant = { fg = c.green_5, bg = c.none }                -- any constant
              hl.String = { fg = c.green, bg = c.none }                    -- a string constant: "this is a string"
              hl.Character = { fg = c.green, bg = c.none }                 -- a character constant: 'c' '\n'
              hl.Number = { fg = c.purple_5, bg = c.none }                 -- a number constant: 234 0xff
              hl.Boolean = { fg = c.yellow_2, bg = c.none }                -- a boolean constant: TRUE false
              hl.Float = { fg = c.red_5, bg = c.none }                     -- a floating point constant: 2.3e10
              -- Identifier
              hl.Identifier = { fg = c.fg, bg = c.none }                   -- any variable name
              hl.Function = { fg = c.green_1, bg = c.none }                -- function name (also: methods for classes)
              -- Statement
              hl.Statement = { fg = c.purple, bg = c.none }                -- any statement
              hl.Conditional = { fg = c.red, bg = c.none }                 -- if, then, else, endif, switch, etc.
              hl.Repeat = { fg = c.red_5, bg = c.none }                    -- for, do, while, etc.
              hl.Label = { fg = c.purple, bg = c.none }                    -- case, default, etc.
              hl.Operator = { fg = c.green_5, bg = c.none }                -- "sizeof", "+", "*", etc.
              hl.Keyword = { fg = c.blue_1, bg = c.none }                  -- any other keyword
              hl.Exception = { fg = c.blue_3, bg = c.none }                -- try, catch, throw
              -- Preproc
              hl.PreProc = { fg = c.yellow, bg = c.none }                  -- generic Preprocessor
              hl.Include = { fg = c.yellow, bg = c.none }                  -- preprocessor #include
              hl.Define = { fg = c.purple, bg = c.none }                   -- preprocessor #define
              hl.Macro = { fg = c.yellow, bg = c.none }                    -- same as Define
              hl.PreCondit = { fg = c.blue, bg = c.none }                  -- preprocessor #if, #else, #endif, etc.
              -- Type
              hl.Type = { fg = c.yellow_3, bg = c.none }                   -- int, long, char, etc.
              hl.StorageClass = { fg = c.green, bg = c.none }              -- static, register, volatile, etc.
              hl.Structure = { fg = c.blue_3, bg = c.none }                -- struct, union, enum, etc.
              hl.Typedef = { fg = c.yellow, bg = c.none }                  -- A typedef
              -- Special
              hl.Special = { fg = c.blue, bg = c.none }                    -- any special symbol
              hl.SpecialChar = { fg = c.blue, bg = c.none }                -- special character in a constant
              hl.Tag = { fg = c.red, bg = c.none }                         -- you can use CTRL-] on this
              hl.Delimiter = { fg = c.red_2, bg = c.none }                 -- character that needs attention
              hl.SpecialComment = { fg = c.subtext0, bg = c.none }         -- special things inside a comment
              hl.Debug = { fg = c.blue, bg = c.none }                      -- debugging statements
              -- Underlined
              hl.Underlined = { fg = c.fg, bg = c.none, underline = true } -- text that stands out, HTML links
              -- Ignore
              hl.Ignore = { fg = c.none, bg = c.none }                     -- left blank, hidden  |hl-Ignore|
              -- Error
              hl.Error = { fg = c.red, bg = c.none }                       -- any erroneous construct
              -- Todo
              hl.Todo = { fg = c.purple, bg = c.none }                     -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
              -- lsp
              hl.DiagnosticError = { fg = c.dark_red }
              hl.DiagnosticHint = { fg = c.dark_yellow }
              hl.DiagnosticInfo = { fg = c.overlay0 }
              hl.DiagnosticWarn = { fg = c.dark_orange }
              hl.DiagnosticInformation = { fg = c.yellow, bold = true }
              hl.DiagnosticTruncateLine = { fg = c.overlay0, bold = true }
              hl.DiagnosticUnderlineError = { sp = c.red, undercurl = true }
              hl.DiagnosticUnderlineHint = { sp = c.red, undercurl = true }
              hl.DiagnosticUnderlineInfo = { sp = c.red, undercurl = true }
              hl.DiagnosticUnderlineWarn = { sp = c.red, undercurl = true }
              hl.LspCodeLens = { fg = c.subtext1 }
              hl.LspCodeLensSeparator = { fg = c.subtext1 }
              hl.LspDiagnosticsFloatingError = { fg = c.red_1 }
              hl.LspDiagnosticsFloatingHint = { fg = c.gold_1 }
              hl.LspDiagnosticsFloatingInfor = { fg = c.overlay0 }
              hl.LspDiagnosticsFloatingWarn = { fg = c.dark_orange }
              hl.LspFloatWinBorder = { fg = c.overlay0 }
              hl.LspFloatWinNormal = { fg = c.text, bg = c.crust }
              hl.LspReferenceRead = { fg = c.none, bg = c.surface1 }
              hl.LspReferenceText = { fg = c.none, bg = c.surface1 }
              hl.LspReferenceWrite = { fg = c.none, bg = c.surface1 }
              hl.ProviderTruncateLine = { fg = c.overlay0 }


              -- old
              hl.TSString = { fg = c.red }
              hl.TSError = { fg = c.red }
              hl.TSPunctDelimiter = { fg = c.red }
              hl.TSPunctBracket = { fg = c.fg }
              hl.TSPunctSpecial = { fg = c.red_1 }
              hl.TSConstant = { fg = c.green_5 }
              hl.TSConstBuiltin = { fg = c.orange_1 }
              hl.TSConstMacro = { fg = c.red }
              hl.TSStringRegex = { fg = c.cyan }
              hl.Number = { fg = c.purple }
              hl.TSStringEscap = { fg = c.red }
              hl.TSCharacter = { fg = c.green }
              hl.TSNumber = { fg = c.purple_5 }
              hl.TSBoolean = { fg = c.yellow_2 }
              hl.TSFloat = { fg = c.red_5 }
              hl.TSAnnotation = { fg = c.yellow }
              hl.TSAttribute = { fg = c.purple_3 }
              hl.TSNamespace = { fg = c.green }
              hl.TSFuncBuiltin = { fg = c.green_1 }
              hl.TSFunction = { fg = c.green_1 }
              hl.TSFuncMacro = { fg = c.yellow }
              hl.TSParameter = { fg = c.purple_3 }
              hl.TSParameterReference = { fg = c.cyan }
              hl.TSMethod = { fg = c.purple }
              hl.TSField = { fg = c.purple_2 }
              hl.TSProperty = { fg = c.purple_2 }
              hl.TSConstructor = { fg = c.purple_5 }
              hl.TSConditional = { fg = c.red }
              hl.TSRepeat = { fg = c.red_5 }
              hl.TSLabel = { fg = c.purple }
              hl.TSKeyword = { fg = c.blue_1 }
              hl.TSKeywordFunction = { fg = c.blue_1 }
              hl.TSKeywordOperator = { fg = c.blue_2 }
              hl.TSOperator = { fg = c.green_5 }
              hl.TSException = { fg = c.blue_3 }
              hl.TSType = { fg = c.yellow_3 }
              hl.TSTypeBuiltin = { fg = c.green_3 }
              hl.TSStructure = { fg = c.blue_3 }
              hl.TSInclude = { fg = c.yellow }
              hl.TSVariable = { fg = c.fg }
              hl.TSVariableBuiltin = { fg = c.grey_3 }
              hl.TSText = { fg = c.fg }
              hl.TSStrong = { fg = c.yellow_1 }
              hl.TSEmphasis = { fg = c.blue_3 }
              hl.TSUnderline = { fg = c.fg }
              hl.TSTitle = { fg = c.fg }
              hl.TSLiteral = { fg = c.red_2 }
              hl.TSURI = { fg = c.blue_1 }
              hl.TSUnderline = { fg = c.fg }
              hl.TSTitle = { fg = c.fg }
              hl.TSLiteral = { fg = c.fg }
              hl.TSURI = { fg = c.green }
              hl.TSTag = { fg = c.red }
              hl.TSTagDelimiter = { fg = c.red_2 }
              hl.rainbowcol1 = { fg = c.blue_3 }
              hl.rainbowcol1 = { fg = c.yellow_3 }
              hl.rainbowcol2 = { fg = c.blue_1 }
              hl.rainbowcol3 = { fg = "LightSkyBlue" }
              hl.rainbowcol4 = { fg = "Gold" }
              hl.rainbowcol5 = { fg = "Orchid" }
              hl.rainbowcol6 = { fg = "LightSkyBlue" }
              hl.rainbowcol7 = { fg = "Orchid" }
              hl.TSTitle = { fg = c.green }
              hl.markdownTSNone = { fg = c.green }
              hl.markdownTSTitle = { fg = c.green }
              hl.markdownTSLiteral = { fg = c.green }
              hl.markdownTSPunctSpecial = { fg = c.red }
              hl.markdownTSPunctDelimiter = { fg = c.green_5 }
              -- hl.punctuationspecial = { fg = C.red }
              hl.DashboardHeader = { fg = c.red }
              hl.DashboardShortcut = { fg = c.yellow }
              hl.DashboardFooter = { fg = c.red_7 }
              hl.DashboardCenter = { fg = c.cyan }
              hl.rustTSType = { fg = c.yellow }
              hl.rustTSFuncMacro = { fg = c.yellow }
              hl.rustTSNamespace = { fg = c.green }
              hl.rustTSConstant = { fg = c.green_5 }
              hl.rustTSKeywordFunction = { fg = c.blue_1 }
            end,
            ["@annotation"] = { fg = yungjcolors.yellow },
            ["@attribute"] = { fg = yungjcolors.purple_3 },
            ["@boolean"] = { fg = yungjcolors.yellow_2 },
            ["@character"] = { fg = yungjcolors.green },
            ["@conditional"] = { fg = yungjcolors.purple },
            ["@constant"] = { fg = yungjcolors.yellow },
            ["@constant.builtin"] = { fg = yungjcolors.orange_1 },
            ["@constant.macro"] = { fg = yungjcolors.red },
            ["@constant.rust"] = { fg = yungjcolors.green_5 },
            ["@constructor"] = { fg = yungjcolors.purple_5 },
            ["@error"] = { fg = yungjcolors.red },
            ["@exception"] = { fg = yungjcolors.blue_3 },
            ["@field"] = { fg = yungjcolors.purple_2 },
            ["@float"] = { fg = yungjcolors.red_5 },
            ["@function"] = { fg = yungjcolors.green_1 },
            ["@function.builtin"] = { fg = yungjcolors.green_4 },
            ["@function.macro"] = { fg = yungjcolors.yellow },
            ["@function.macro.rust"] = { fg = yungjcolors.yellow },
            ["@include"] = { fg = yungjcolors.yellow },
            ["@keyword"] = { fg = yungjcolors.blue_1 },
            ["@keyword.function"] = { fg = yungjcolors.blue_1 },
            ["@keyword.function.rust"] = { fg = yungjcolors.blue_1 },
            ["@keyword.operator"] = { fg = yungjcolors.blue_2 },
            ["@label"] = { fg = yungjcolors.purple },
            ["@literal.markdown"] = { fg = yungjcolors.green },
            ["@method"] = { fg = yungjcolors.purple },
            ["@namespace"] = { fg = yungjcolors.green },
            ["@namespace.rust"] = { fg = yungjcolors.green },
            ["@none.markdown"] = { fg = yungjcolors.green },
            ["@number"] = { fg = yungjcolors.purple_5 },
            ["@operator"] = { fg = yungjcolors.green_5 },
            ["@parameter"] = { fg = yungjcolors.purple_3 },
            ["@parameter.reference"] = { fg = yungjcolors.cyan },
            ["@property"] = { fg = yungjcolors.purple_2 },
            ["@punctuation.bracket"] = { fg = yungjcolors.fg },
            ["@punctuation.delimiter"] = { fg = yungjcolors.red },
            ["@punctuation.delimiter.markdown"] = { fg = yungjcolors.green_5 },
            ["@punctuation.special"] = { fg = yungjcolors.red_1 },
            ["@punctuation.special.markdown"] = { fg = yungjcolors.red },
            ["@repeat"] = { fg = yungjcolors.red_5 },
            ["@string"] = { fg = yungjcolors.green },
            ["@string.escape"] = { fg = yungjcolors.red },
            ["@string.regex"] = { fg = yungjcolors.cyan },
            ["@tag"] = { fg = yungjcolors.red },
            ["@tag.delimiter"] = { fg = yungjcolors.red_2 },
            ["@text"] = { fg = yungjcolors.fg },
            ["@text.emphasis"] = { fg = yungjcolors.blue_3, italic = true },
            ["@text.literal"] = { fg = yungjcolors.fg },
            ["@text.reference"] = { fg = yungjcolors.yellow },
            ["@text.strong"] = { fg = yungjcolors.yellow_1, bold = true },
            ["@text.title"] = { fg = yungjcolors.fg },
            ["@text.underline"] = { fg = yungjcolors.fg },
            ["@text.uri"] = { fg = yungjcolors.blue_1 },
            ["@title.markdown"] = { fg = yungjcolors.fg },
            ["@type"] = { fg = yungjcolors.yellow_3 },
            ["@type.builtin"] = { fg = yungjcolors.green_3 },
            ["@type.rust"] = { fg = yungjcolors.yellow },
            ["@variable"] = { fg = yungjcolors.fg },
            ["@variable.builtin"] = { fg = yungjcolors.grey_3 },
            --lsp
            ["@lsp.type.builtinType"] = { fg = yungjcolors.yellow, bg = yungjcolors.none },
            ["@lsp.type.keyword"] = { link = "Keyword" },
            ["@lsp.type.operator"] = { link = "Operator" },
            ["@lsp.type.parameter"] = { link = "@parameter" },
            ["@lsp.type.property"] = { link = "@property" },
            ["@lsp.type.variable"] = { link = "@lsp.type.variable" },
            ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = yungjcolors.cyan, bg = yungjcolors.none },
            ["@lsp.typemod.function.defaultLibrary"] = { fg = yungjcolors.cyan, bg = yungjcolors.none },
            ["@lsp.typemod.function.global"] = { fg = yungjcolors.cyan, bg = yungjcolors.none },
            ["@lsp.typemod.method.defaultLibrary"] = { fg = yungjcolors.cyan, bg = yungjcolors.none },
            ["@lsp.typemod.method.reference"] = { link = "Function" },
            ["@lsp.typemod.method.trait"] = { link = "Function" },
            ["@lsp.typemod.selfKeyword.defaultLibrary"] = { link = "Keyword" },
            ["@lsp.typemod.variable.defaultLibrary"] = { fg = yungjcolors.yellow, bg = yungjcolors.none },
            ["@lsp.typemod.variable.readonly"] = { link = "Constant" },
          }
        }
      })
    end,
  },
}
