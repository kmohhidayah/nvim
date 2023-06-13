return {
  { 'voldikss/vim-translator',
    config = function()
      vim.g.translator_target_lang = 'ID'
      vim.g.translator_window_borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }
      vim.g.translator_default_engines = { 'google' }
    end
  },
}
