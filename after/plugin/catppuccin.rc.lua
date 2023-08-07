local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({})

vim.cmd.colorscheme "catppuccin"
