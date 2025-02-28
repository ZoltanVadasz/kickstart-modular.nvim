--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<nop>')
vim.keymap.set('n', '<C-l>', '<nop>')
vim.keymap.set('n', '<C-j>', '<nop>')
vim.keymap.set('n', '<C-k>', '<nop>')

vim.keymap.set('n', '<leader>pt', vim.cmd.Ex, { desc = 'Open Explorer' })

-- move highlighted lines in Visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection down' })

-- keep the cursor on the beginning of the line when joining lines
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines & keep cursor on #1' })

-- keep the cursor centered during half page moves
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep search result in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>vwm', function()
  require('vim-with-me').StartVimWithMe()
end)
vim.keymap.set('n', '<leader>svwm', function()
  require('vim-with-me').StopVimWithMe()
end)

-- greatest remap ever
-- if pasting over highlighted text keep the original buffer to be able top past that again
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste and keep buffer' })

-- next greatest remap ever : asbjornHaland
-- to copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy do system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Copy line to system clipboard' })

-- delete to void, to never touch your precious buffers
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete to void' })

-- This is going to get me cancelled
vim.keymap.set('i', '<C-c>', '<Esc>', { desc = 'Esc' })

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Open new tmux window' })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- Quick Fix list?? what it it?
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- replace highlighted word
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
