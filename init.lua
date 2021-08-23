require('plugins')
require('nv-compe')
require('lsp-config')
require('lsp.lua-ls')
require('keymappings')

-- Color scheme
require('zephyr')

local actions = require("telescope.actions")
require("telescope").setup {
  defaults = {
    file_ignore_patterns = {"/tmp/*"},
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    propmt_prefix = " > ",
    color_devicons = true,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    }
  }
}

vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_open = 1
vim.wo.number = true

require("telescope").load_extension("fzy_native")
