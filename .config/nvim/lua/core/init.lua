vim.filetype.add({
  extension = {
    journal = "hledger",
    hledger = "hledger",
  },
})

require('core.opts')
require('core.keymap')
--require('core.diagnostic')
require('core.lsp')
