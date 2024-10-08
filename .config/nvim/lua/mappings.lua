require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('n', '<leader>fm', function()
  require('conform').format {
    async = true,
  }
end)

map('t', '<C-w>w', '<cmd> wincmd k <CR>')

map('v', '<leader>sc', ":Silicon<CR>")
