return {
  'phaazon/hop.nvim',
  event = 'BufEnter',
  config = function()
    require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
  end,
  keys = {
    { '<leader>m', '<cmd>HopWord<cr>', desc = 'HopWord' },
  },
}
