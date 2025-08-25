return {
  -- nvim v0.8.0
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git [c]hange' })

        -- Actions
        -- visual mode
        map('v', '<leader>ghs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'git [s]tage hunk' })
        map('v', '<leader>ghr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'git [r]eset hunk' })
        -- normal mode
        map('n', '<leader>gh', '', { desc = 'Git hunk' })
        map('n', '<leader>ghs', gitsigns.stage_hunk, { desc = 'git [s]tage hunk' })
        map('n', '<leader>ghr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })
        map('n', '<leader>ghS', gitsigns.stage_buffer, { desc = 'git [S]tage buffer' })
        map('n', '<leader>ghu', gitsigns.stage_hunk, { desc = 'git [u]ndo stage hunk' })
        map('n', '<leader>ghR', gitsigns.reset_buffer, { desc = 'git [R]eset buffer' })
        map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = 'git [p]review hunk' })
        map('n', '<leader>ghb', gitsigns.blame_line, { desc = 'git [b]lame line' })
        map('n', '<leader>ghd', gitsigns.diffthis, { desc = 'git [d]iff against index' })
        map('n', '<leader>ghD', function()
          gitsigns.diffthis '@'
        end, { desc = 'git [D]iff against last commit' })
        -- -- Toggles
        -- map('n', '<leader>gtb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
        -- map('n', '<leader>gtD', gitsigns.preview_hunk_inline, { desc = '[T]oggle git show [D]eleted' })
      end,
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'akinsho/git-conflict.nvim',
    event = 'BufRead',
    version = '*',
    config = function()
      require('git-conflict').setup {}
    end,
    keys = {
      { '<leader>gc', '', desc = 'Git conflict' },
      { '<leader>gco', '<cmd>GitConflictChooseOurs<cr>', desc = 'Select the current changes' },
      { '<leader>gct', '<cmd>GitConflictChooseTheirs<cr>', desc = 'Select the incoming changes' },
      { '<leader>gcb', '<cmd>GitConflictChooseBoth<cr>', desc = 'Select both changes' },
      { '<leader>gcn', '<cmd>GitConflictNextConflict<cr>', desc = 'Move to the next conflict' },
      { '<leader>gcp', '<cmd>GitConflictPrevConflict<cr>', desc = 'Move to the previous conflict' },
    },
  },
  {
    'sindrets/diffview.nvim',
    keys = {
      { '<leader>gd', '', desc = 'Diffview' },
      { '<leader>gdd', '<cmd>DiffviewOpen<cr>', desc = 'Diffview open' },
      { '<leader>gdc', '<cmd>DiffviewClose<cr>', desc = 'Diffview close' },
      { '<leader>gdh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Current file history' },
      { '<leader>gdH', '<cmd>DiffviewFileHistory<cr>', desc = 'All files history' },
    },
  },
}
