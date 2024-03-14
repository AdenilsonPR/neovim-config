local autocmd = vim.api.nvim_create_autocmd

-- auto save
autocmd({ 'InsertLeave', 'TextChanged' },{
  pattern = "*.*",
  command = "update"
})

-- NeoVim enter
autocmd({ "VimEnter" }, {
  command = ":NvimTreeFocus"
})
