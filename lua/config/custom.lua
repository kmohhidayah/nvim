local M = {}

M.greet = function(name)
  print("Hello, " .. name .. "!")
end

-- Contoh keybinding kustom
vim.api.nvim_set_keymap('n', '<leader>g', ':lua require("config.custom").greet("Neovim")<CR>',
  { noremap = true, silent = true })

return M
