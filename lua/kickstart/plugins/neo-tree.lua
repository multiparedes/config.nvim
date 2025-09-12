-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<C-b>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<C-p>', ':Telescope find_files<CR>', desc = 'Find files' },
    { '<C-f>', ':Telescope live_grep<CR>', desc = 'Search text' },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open', -- abrir fichero o expandir directorio
          ['h'] = 'close_node', -- colapsar directorio
          ['H'] = 'close_all_nodes', -- opcional: colapsar todo
          ['<CR>'] = 'open', -- Enter también abre
          ['v'] = 'open_vsplit', -- abrir en split vertical
          ['s'] = 'open_split', -- abrir en split horizontal
        },
      },
    },
  },
}
