-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { 'C-b', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = {enabled=true},
      use_libuv_file_watcher = true,
      close_if_last_window=true,
      window = {
        width=30,
        position="left",
        mappings = {
          ['h'] = 'close_node',
          ['l'] = 'open',
          ['<space>'] = {
            'toggle_node',
            nowait = false
          }
        },
      },
    }
  }
}
