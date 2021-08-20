vim.g.mapleader = ' '

local set_keymap = vim.api.nvim_set_keymap

set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true})
set_keymap('n', '<Leader>b', ':NvimTreeToggle<CR>', { noremap = true, silent = true})

-- better window movement
set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- easy indentation in visual mode
set_keymap('v', '<', '<gv', { noremap = true, silent = true })
set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- easily switch tabs
set_keymap('n', '<TAB>', ':tabn<CR>', { noremap = true, silent = true })
set_keymap('n', '<S-TAB>', ':tabp<CR>', { noremap = true, silent = true })
-- set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
-- set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Move selected line / block of text in visual mode 
set_keymap('x', 'K', ':move \'<-2<cr>gv-gv\'', { noremap = true, silent = true })
set_keymap('x', 'J', ':move \'<+1<cr>gv-gv\'', { noremap = true, silent = true })

set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })

-- print(vim.inspect(vim.g.mapleader))
