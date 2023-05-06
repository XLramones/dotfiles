return {
  -- {
  --   "AstroNvim/astrotheme",
  --   config = function()
  --     require("astrotheme").setup({
  --       palette = "global",
  --       termguicolors = true,
  --       terminal_color = true,
  --       plugin_default = "auto",
  --       palettes = {
  --         global = {
  --           none = "NONE",
  --           fg = "#ffffff",
  --           -- bg = "#2c2836",
  --           -- bg = "#000000";
  --           bg = "#141022",
  --           black = "#181a1f",
  --           black_1 = "#1f1f25",
  --           white = "#ffffff",
  --           white_1 = "#afb2bb",
  --           white_2 = "#c9c9c9",
  --           grey = "#5c6370",
  --           grey_1 = "#4b5263",
  --           grey_2 = "#777d86",
  --           grey_3 = "#656c8c",
  --           grey_4 = "#1c121c",
  --           grey_5 = "#3e4452",
  --           grey_6 = "#3b4048",
  --           grey_7 = "#5c5c5c",
  --           grey_8 = "#252931",
  --           grey_9 = "#787e87",
  --           grey_10 = "#D3D3D3",
  --           green = "#29d9b9",
  --           green_1 = "#bdff42",
  --           green_2 = "#8acf94",
  --           green_3 = "#27ffc2",
  --           green_4 = "#afff5f",
  --           green_5 = "#09f080",
  --           blue = "#3D62F5",
  --           blue_1 = "#01ffff",
  --           blue_2 = "#A9D1DF",
  --           blue_3 = "#89acf9",
  --           orange = "#feffac",
  --           orange_1 = "#ff9640",
  --           orange_2 = "#ff8800",
  --           yellow = "#fcfb75",
  --           yellow_1 = "#e3dac9",
  --           yellow_2 = "#d1b071",
  --           yellow_3 = "#feffac",
  --           gold_1 = "#ffcc00",
  --           red = "#ff91d1",
  --           red_1 = "#ec5f67",
  --           red_2 = "#fcc2f3",
  --           red_3 = "#cc626a",
  --           red_4 = "#d47d85",
  --           red_5 = "#ff62ff",
  --           red_6 = "#ff01ff",
  --           red_7 = "#ff00a0",
  --           cyan = "#48c5b4",
  --           cyan_1 = "#56b6c2",
  --           cyan_2 = "#00a3a1",
  --           purple = "#b387e7",
  --           purple_1 = "#d86dff",
  --           purple_2 = "#c7c4ff",
  --           purple_3 = "#d8d1ff",
  --           purple_5 = "#7959B9"
  --         },
  --       },
  --       -- highlights = {
  --       --   yungjtheme = {
  --       --     modify_hl_groups = function(hl, C)
  --       --       hl.TSString = { fg = C.red }
  --       --       hl.TSError = { fg = C.red }
  --       --       hl.TSPunctDelimiter = { fg = C.red }
  --       --       hl.TSPunctBracket = { fg = C.fg }
  --       --       hl.TSPunctSpecial = { fg = C.red_1 }
  --       --       hl.TSConstant = { fg = C.green_5 }
  --       --       hl.TSConstBuiltin = { fg = C.orange_1 }
  --       --       hl.TSConstMacro = { fg = C.red }
  --       --       hl.TSStringRegex = { fg = C.cyan }
  --       --       hl.Number = { fg = C.purple }
  --       --       hl.TSStringEscap = { fg = C.red }
  --       --       hl.TSCharacter = { fg = C.green }
  --       --       hl.TSNumber = { fg = C.purple_5 }
  --       --       hl.TSBoolean = { fg = C.yellow_2 }
  --       --       hl.TSFloat = { fg = C.red_5 }
  --       --       hl.TSAnnotation = { fg = C.yellow }
  --       --       hl.TSAttribute = { fg = C.purple_3 }
  --       --       hl.TSNamespace = { fg = C.green }
  --       --       hl.TSFuncBuiltin = { fg = C.green_1 }
  --       --       hl.TSFunction = { fg = C.green_1 }
  --       --       hl.TSFuncMacro = { fg = C.yellow }
  --       --       hl.TSParameter = { fg = C.purple_3 }
  --       --       hl.TSParameterReference = { fg = C.cyan }
  --       --       hl.TSMethod = { fg = C.purple }
  --       --       hl.TSField = { fg = C.purple_2 }
  --       --       hl.TSProperty = { fg = C.purple_2 }
  --       --       hl.TSConstructor = { fg = C.purple_5 }
  --       --       hl.TSConditional = { fg = C.red }
  --       --       hl.TSRepeat = { fg = C.red_5 }
  --       --       hl.TSLabel = { fg = C.purple }
  --       --       hl.TSKeyword = { fg = C.blue_1 }
  --       --       hl.TSKeywordFunction = { fg = C.blue_1 }
  --       --       hl.TSKeywordOperator = { fg = C.blue_2 }
  --       --       hl.TSOperator = { fg = C.green_5 }
  --       --       hl.TSException = { fg = C.blue_3 }
  --       --       hl.TSType = { fg = C.yellow_3 }
  --       --       hl.TSTypeBuiltin = { fg = C.green_3 }
  --       --       hl.TSStructure = { fg = C.blue_3 }
  --       --       hl.TSInclude = { fg = C.yellow }
  --       --       hl.TSVariable = { fg = C.fg }
  --       --       hl.TSVariableBuiltin = { fg = C.grey_3 }
  --       --       hl.TSText = { fg = C.fg }
  --       --       hl.TSStrong = { fg = C.yellow_1 }
  --       --       hl.TSEmphasis = { fg = C.blue_3 }
  --       --       hl.TSUnderline = { fg = C.fg }
  --       --       hl.TSTitle = { fg = C.fg }
  --       --       hl.TSLiteral = { fg = C.red_2 }
  --       --       hl.TSURI = { fg = C.blue_1 }
  --       --       hl.TSUnderline = { fg = C.fg }
  --       --       hl.TSTitle = { fg = C.fg }
  --       --       hl.TSLiteral = { fg = C.fg }
  --       --       hl.TSURI = { fg = C.green }
  --       --       hl.TSTag = { fg = C.red }
  --       --       hl.TSTagDelimiter = { fg = C.red_2 }
  --       --       hl.rainbowcol1 = { fg = C.blue_3 }
  --       --       hl.rainbowcol1 = { fg = C.yellow_3 }
  --       --       hl.rainbowcol2 = { fg = C.blue_1 }
  --       --       hl.rainbowcol3 = { fg = "LightSkyBlue" }
  --       --       hl.rainbowcol4 = { fg = "Gold" }
  --       --       hl.rainbowcol5 = { fg = "Orchid" }
  --       --       hl.rainbowcol6 = { fg = "LightSkyBlue" }
  --       --       hl.rainbowcol7 = { fg = "Orchid" }
  --       --       hl.TSTitle = { fg = C.green }
  --       --       hl.markdownTSNone = { fg = C.green }
  --       --       hl.markdownTSTitle = { fg = C.green }
  --       --       hl.markdownTSLiteral = { fg = C.green }
  --       --       hl.markdownTSPunctSpecial = { fg = C.red }
  --       --       hl.markdownTSPunctDelimiter = { fg = C.green_5 }
  --       --       -- hl.punctuationspecial = { fg = C.red }
  --       --       hl.DashboardHeader = { fg = C.red }
  --       --       hl.DashboardShortcut = { fg = C.yellow }
  --       --       hl.DashboardFooter = { fg = C.red_7 }
  --       --       hl.DashboardCenter = { fg = C.cyan }
  --       --       hl.rustTSType = { fg = C.yellow }
  --       --       hl.rustTSFuncMacro = { fg = C.yellow }
  --       --       hl.rustTSNamespace = { fg = C.green }
  --       --       hl.rustTSConstant = { fg = C.green_5 }
  --       --       hl.rustTSKeywordFunction = { fg = C.blue_1 }
  --       -- end,
  --       -- }
  --       -- }
  --     })
  --   end,
  -- },
  {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { 'tami5/sqlite.lua', module = 'sqlite' },
      -- you'll need at least one of these
      -- {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  },
  { "godlygeek/tabular" },
  { "unblevable/quick-scope" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "jvgrootveld/telescope-zoxide", },
    config = function(plugin, opts)
      require("plugins.configs.telescope")(plugin, opts)

      local telescope = require "telescope"
      telescope.load_extension "zoxide"
    end,
  },
  { "ThePrimeagen/harpoon" },
  { "ThePrimeagen/vim-be-good" },
  -- hop = true;
  -- init = function(plugins)
  --   local my_plugins = {
  --     -- {"SidOfc/mkdx"},
  --     { "godlygeek/tabular" },
  --     -- {"preservim/vim-markdown"},
  --     { "unblevable/quick-scope" },
  --     -- {"ggandor/lightspeed.nvim"},
  --     -- {"justinmk/vim-sneak"},
  --     { "jvgrootveld/telescope-zoxide" },
  --     -- {"AckslD/nvim-neoclip.lua"},
  --     -- {'tami5/sqlite.lua', module = 'sqlite'},
  --     {
  --       "AckslD/nvim-neoclip.lua",
  --       requires = {
  --         { 'tami5/sqlite.lua', module = 'sqlite' },
  --         -- you'll need at least one of these
  --         -- {'nvim-telescope/telescope.nvim'},
  --         -- {'ibhagwan/fzf-lua'},
  --       },
  --       config = function()
  --         require('neoclip').setup()
  --       end,
  --     },
  --     { "ThePrimeagen/harpoon" },
  --     { "ThePrimeagen/vim-be-good" },
  --     -- {"nvim-orgmode/orgmode",
  --     --   config = function()
  --     --     require('orgmode').setup{}
  --     --   end },
  --     --   {
  --     --     'pyrho/nerveux.nvim',
  --     --     requires = {
  --     --         'nvim-lua/plenary.nvim',
  --     --         'nvim-lua/popup.nvim',
  --     --         'nvim-telescope/telescope.nvim',
  --     --     },
  --     --     config = function() require"nerveux".setup() end,
  --     -- }
  --     -- {
  --     --   "oberblastmeister/neuron.nvim",
  --     --   config = function()
  --     --     require'neuron'.setup {
  --     --       virtual_titles = true,
  --     --       mappings = true,
  --     --       run = nil, -- function to run when in neuron dir
  --     --       neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
  --     --       leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
  --     --     }
  --     --   end,
  --     --     },
  --     -- {"nvim-telescope/telescope.nvim"},
  --   }
  --   --require'telescope'.load_extension('zoxide')
  --   --require'telescope'.load_extension('neoclip')
  --   return vim.tbl_deep_extend("force", plugins, my_plugins)
  -- end,
  telescope = {
    defaults = {
      prompt_prefix = "問 ",
      layout_config = {
        horizontal = {
          prompt_position = "bottom",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 50,
      },
      extensions = { "neoclip", "zoxide" },
      pickers = {},
    }
  }
}
