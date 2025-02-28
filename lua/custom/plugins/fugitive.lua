return {
  'tpope/vim-fugitive',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
  end,
}
-- vim: ts=2 sts=2 sw=2 et
