local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({})

vim.keymap.set('n', '<C-h>', function()
  vim.cmd('BufferLineCyclePrev')
end)

vim.keymap.set('n', '<C-l>', function()
  vim.cmd('BufferLineCycleNext')
end)

vim.keymap.set('n', '<C-w>', function()
  vim.cmd('bd')
end)
