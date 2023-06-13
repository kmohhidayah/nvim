return {
  -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  lazy = false,
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim',       opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    'folke/neodev.nvim',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
    -- You will likely want to reduce updatetime which affects CursorHold
    -- note: this setting is global and should be set only once
    function PrintDiagnostics(opts, bufnr, line_nr, client_id)
      bufnr = bufnr or 0
      line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
      opts = opts or { ['lnum'] = line_nr }

      local line_diagnostics = vim.diagnostic.get(bufnr, opts)
      if vim.tbl_isempty(line_diagnostics) then return end

      local diagnostic_message = ""
      for i, diagnostic in ipairs(line_diagnostics) do
        diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
        print(diagnostic_message)
        if i ~= #line_diagnostics then
          diagnostic_message = diagnostic_message .. "\n"
        end
      end

      -- Mengatur grup highlight baru dengan nama "DiagnosticMessage"
      vim.api.nvim_command('highlight DiagnosticMessage guifg=#ff0000')

      -- Menambahkan opsi highlight pada teks yang ditampilkan
      vim.api.nvim_echo({ { diagnostic_message, "DiagnosticMessage" } }, false, {})
    end

    vim.cmd [[ autocmd! CursorHold * lua PrintDiagnostics() ]]

    lspconfig.gopls.setup({
      cmd = { 'gopls', 'serve' },
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,

          },
          staticcheck = false,
        },
      },
    })
  end,
}
