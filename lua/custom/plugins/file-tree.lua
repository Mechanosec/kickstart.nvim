return {
  -- {
  --   'simonmclean/triptych.nvim',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim', -- required
  --     'nvim-tree/nvim-web-devicons', -- optional for icons
  --     'antosha417/nvim-lsp-file-operations', -- optional LSP integration
  --   },
  --   opts = {}, -- config options here
  --   keys = {
  --     { '<leader>e', ':Triptych<CR>', desc = '[T]ree' },
  --   },
  -- },
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      {
        'antosha417/nvim-lsp-file-operations', -- optional LSP integration
        opts = {},
      },
    },
    lazy = false,
    keys = {
      { '<leader>e', ':Neotree toggle<CR>', desc = '[T]ree', silent = true },
    },
    opts = {
      window = {
        position = 'right',
      },
      -- filesystem = {
      --   window = {
      --     mappings = {
      --       ['<leader>e'] = 'close_window',
      --     },
      --   },
      -- },
    },
  },
}
