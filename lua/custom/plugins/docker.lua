return {
  {
    'crnvl96/lazydocker.nvim',
    keys = {
      { '<leader>dd', "<Cmd>lua require('lazydocker').toggle({ engine = 'docker' })<CR>", desc = 'LazyDocker (docker)' },
      { '<leader>dp', "<Cmd>lua require('lazydocker').toggle({ engine = 'podman' })<CR>", desc = 'LazyDocker (podman)' },
    },
    opts = {
      window = {
        settings = {
          width = 0.9, -- Percentage of screen width (0 to 1)
          height = 0.9, -- Percentage of screen height (0 to 1)
        },
      },
      popup_window = {
        relative = 'editor',
      },
    },
  },

  {
    'folke/snacks.nvim',
  },
}
