return {
  'romgrk/barbar.nvim',
  event = 'VeryLazy',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {},
  keys = {
    { '<Tab>', '<cmd>BufferNext<cr>' },
    { '<S-Tab>', '<cmd>BufferPrevious<cr>' },
    { '<leader>bd', '<cmd>BufferClose<cr>' },
    { '<leader>bD', '<cmd>BufferCloseAllButCurrent<cr>' },
    { '<leader>bl', '<cmd>BufferCloseBuffersRight<cr>' },
    { '<leader>bh', '<cmd>BufferCloseBuffersLeft<cr>' },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
