local config = {
  polish      = function()
    -- zettel nerveux
    --   require 'nerveux'.setup{
    --     --- path to neuron executable (default: neuron in PATH)
    --     -- neuron_cmd = "neuron",
    --
    --     --- no trailing slash, (default: current directory)
    --     -- neuron_dir = "/my/zettel/root/dir",
    --
    --     --- Use the cache, significantly faster (default: false)
    --     use_cache = true,
    --
    --     --- start the neuron daemon to keep the cache up to date (default: false)
    --     start_daemon = true,
    --
    --     --- show zettel titles inline as virtual text (default: false)
    --     -- virtual_titles = true,
    --
    --     --- Automatically create mappings (default: false)
    --     -- create_default_mappings = true,
    --
    --     --- The Highlight Group used for the inline zettel titles (default: Special)
    --     virtual_title_hl = "Special",
    --     virtual_title_hl_folge = "Repeat",
    --
    --     --- `kill -9` the pid of the daemon at exit (VimPreLeave), only valid is
    --     -- start_daemon is true (default: false)
    --     kill_daemon_at_exit = false,
    --
    --     --- You can overwrite this table partially
    --     -- and your settings will get merged with the defaults
    --     -- You can also disable a single mapping by settings it's value to an empty string.
    --     mappings = {
    --
    --        -- Search all your zettels
    --        -- * then `<CR>` to edit
    --        -- * or `<Tab>` to insert the selected zettel ID under your cursor
    --        search_zettels = "gzz" ,
    --
    --        -- Search the backlinks to the current zettel
    --        backlinks_search = "gzb" ,
    --
    --        -- Search the only the uplinks to the current zettel
    --        uplinks_search = "gzu" ,
    --
    --        -- Create a new zettel via neuron and :edit it
    --        new = "gzn" ,
    --
    --        -- Search for content inside all the zettels
    --        search_content = "gzs" ,
    --
    --        -- Insert the ID of the previously visited zettel
    --        insert_link = "gzl" ,
    --
    --        -- Insert the ID of the previously visited zettel, but as a folgezettel
    --        insert_link_folge = "gzL" ,
    --
    --        -- Open the zettel ID that's under the cursor
    --        follow = "<CR>" ,
    --
    --        -- Show the help
    --        help = "gz?" ,
    --     }
    -- }
    -- require'neuron'.setup {
    --     virtual_titles = true,
    --     mappings = true,
    --     run = nil, -- function to run when in neuron dir
    --     neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
    --     leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
    -- }

    -- orgmode
    -- require('orgmode').setup_ts_grammar()
    -- require('orgmode').setup({
    --   org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
    --   org_default_notes_file = '~/Dropbox/org/refile.org',
    -- })
    -- local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
    -- parser_configs.markdown = { install_info = { url = "https://github.com/MDeiml/tree-sitter-markdown", files = { "src/parser.c", "src/scanner.cc" }, }, filetype = "markdown", }
    vim.g.neovide_scale_factor = 0.5
    local change_scale_factor = function(delta)
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
      change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
      change_scale_factor(1 / 1.25)
    end)
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap
    local set = vim.opt
    require('neoclip').setup({
      default_register = "*",
      preview = false,
      content_spec_column = true,
    })
    map("n", "<leader>fp", "<cmd>Telescope neoclip default<CR>", opts)
    map("n", "<leader>fz", "<cmd>Telescope zoxide list<CR>", opts)
    map("n", "<leader>mm", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
    map("n", "<leader>mh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
    map("n", "<leader>mj", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", opts)
    map("n", "<leader>mk", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", opts)
    map("n", "<leader>ml", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", opts)
    map("n", "<leader>m4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", opts)
    map("n", "<leader>m5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", opts)
    map("n", "<leader>m6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", opts)
    map("n", "<leader>m7", "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", opts)
    map("n", "<leader>m8", "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", opts)
    map("n", "<leader>m9", "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", opts)
    -- zk
    -- easy splits
    map("n", "\\", "<cmd>split<cr>", { desc = "Horizontal split" })
    map("n", "|", "<cmd>vsplit<cr>", { desc = "Vertical split" })
    -- better increment/decrement
    map("n", "-", "<c-x>", { desc = "Descrement number" })
    map("n", "+", "<c-a>", { desc = "Increment number" })
    map("x", "+", "g<c-a>", { desc = "Increment number" })
    map("x", "-", "g<c-x>", { desc = "Descrement number" })
    local opts = { noremap = true, silent = false }

    -- Create a new note after asking for its title.
    vim.api.nvim_set_keymap("n", "<leader>kn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)

    -- Open notes.
    vim.api.nvim_set_keymap("n", "<leader>ko", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
    -- Open notes associated with the selected tags.
    vim.api.nvim_set_keymap("n", "<leader>kt", "<Cmd>ZkTags<CR>", opts)

    -- Search for the notes matching a given query.
    vim.api.nvim_set_keymap("n", "<leader>kf",
      "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", opts)
    -- Search for the notes matching the current visual selection.
    vim.api.nvim_set_keymap("v", "<leader>kf", ":'<,'>ZkMatch<CR>", opts)
    -- map("n", "<CR>", "<cmd>lua require'nerveux'.open_zettel_under_cursor()<CR>", opts)
    -- map("n", "<leader>gz",  "<cmd>lua require'nerveux'.grep_zettels()<CR>", opts)
    -- map("n", "<leader>gn",  "<cmd>lua require'nerveux'.new_zettel()<CR>", opts)
    -- vim.cmd [[ let g:sneak#label = 1
    -- let g:sneak#use_ic_scs = 1
    -- let g:sneak#s_next = 1]]
    -- if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
    --   local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
    --
    --   -- Open the link under the caret.
    --   map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    --
    --   -- Create a new note after asking for its title.
    --   -- This overrides the global `<leader>zn` mapping to create the note in the same directory as the current buffer.
    --   map("n", "<leader>kn", "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
    --   -- Create a new note in the same directory as the current buffer, using the current selection for title.
    --   map("v", "<leader>knt", ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>", opts)
    --   -- Create a new note in the same directory as the current buffer, using the current selection for note content and asking for its title.
    --   map("v", "<leader>knc",
    --     ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
    --
    --   -- Open notes linking to the current buffer.
    --   map("n", "<leader>kb", "<Cmd>ZkBacklinks<CR>", opts)
    --   -- Alternative for backlinks using pure LSP and showing the source context.
    --   --map('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
    --   -- Open notes linked by the current buffer.
    --   map("n", "<leader>kl", "<Cmd>ZkLinks<CR>", opts)
    --
    --   -- Preview a linked note.
    --   map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    --   -- Open the code actions for a visual selection.
    --   map("v", "<leader>ka", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
    -- end
    vim.cmd("let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']")
    vim.cmd [[set guifont=JetBrainsMono\ Nerd\ Font\ Mono
     let g:neovide_transparency=1
     let g:neovide_cursor_vfx_mode = "wireframe"]]
    vim.cmd("let g:qs_highlight_on_keys = ['f','F','t','T']")
    vim.cmd [[highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline]]
    vim.cmd [[let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
                        ]]
    vim.cmd [[
  augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
  augroup END]]
  end,
  options     = {
    opt = {
      showtabline = 0
    },
  },
  colorscheme = "astrodark",
}

return config
