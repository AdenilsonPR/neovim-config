local map = require("util.keymap-util").map

-- Directory Navigation
map("n", "<leader>e", ":NvimTreeFocus<cr>", { desc = "File explorer focus" })
map("n", "<leader>b", ":NvimTreeToggle<cr>", { desc = "File explorer toggle" })

-- Buffer split Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Navigate split left" })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate split down" })
map("n", "<C-k>", "<C-w>k", { desc = "Navegate split up" })
map("n", "<C-l>", "<C-w>l", { desc = "Navegate split right" })

-- Split buffer
map("n", "<leader>sv", ":vsplit<cr>", { desc = "Vertical split" }) 
map("n", "<leader>sh", ":split<cr>", { desc = "Horizontal split" })

-- Telescope
map("n", "<leader>fk", ":Telescope keymaps<cr>", { desc = "Find keymaps" })
map("n", "<leader>fh", ":Telescope help_tags<cr>", { desc = "Find tags" })
map("n", "<leader>fp", ":Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>ff", ":Telescope live_grep<cr>", { desc = "Find word" })
map("n", "<leader>fb", ":Telescope buffers<cr>", { desc = "Find buffers" })

-- Indenting
map({ "n", "v" }, "<Tab>", ">>", { desc = "Indent right" })
map({ "n", "v" }, "<S-Tab>", "<<", { desc = "Indent left" })

-- Comment
vim.api.nvim_set_keymap("n", "<leader>kc", "gcc", { desc = "Comment" })
vim.api.nvim_set_keymap("v", "<leader>kc", "gcc", { desc = "Comment" })

-- Buffer navigation
map("n", "<leader>bn", ":bn<cr>", { desc = "Navigate next buffer" })
map("n", "<leader>bb", ":bp<cr>", { desc = "Navigate previous buffer" })

-- LSP
map('n', '<leader>lD', vim.lsp.buf.declaration, { desc = "Navigate to the declaration" })
map('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Navigate to the definition" })
map('n', '<leader>lh', vim.lsp.buf.hover, { desc = "Language documentation" })
map('n', '<leaser>li', vim.lsp.buf.implementation, { desc = "Navigate to the implementation" })
map('n', '<leader>ls', vim.lsp.buf.signature_help, { desc = "Signature help" })
map({ 'n', 'v' }, '<leader>.', vim.lsp.buf.code_action, { desc = "Code actions" })

-- Leap
map({'n', 'x', 'o'}, 'f',  '<Plug>(leap)')

-- clipboard
map({'n', 'v'}, "<C-c>", 'y', { desc = "Copy to clipboard" })
map({'n', 'v'}, "<C-v>", 'p', { desc = "Paste to clipboard" })

-- Save
map('n', "<C-s>", ":w<CR>", { desc = "Save buffer"})

-- Lazy git
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "Open lazy git" })
