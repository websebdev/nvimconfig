require('plugins')
require('nv-compe')
require('lsp-config')
require('lsp.lua-ls')
require('keymappings')

-- Color scheme
require('zephyr')

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"/tmp/*"},
  }
}
