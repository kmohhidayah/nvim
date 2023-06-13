return {
  {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      local lsp_format = require("lsp-format")

      lsp_format.setup {
        -- Konfigurasi umum
      }

      local on_attach = function(client)
        lsp_format.on_attach(client)

        -- Konfigurasi formatasi untuk file Lua
        if client.name == "lua" then
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false

          -- Setelah setiap perubahan, jalankan formatasi secara manual
          vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
        end

        -- ... custom code ...
      end

      require("lspconfig").lua_ls.setup {
        on_attach = on_attach,
        -- ... konfigurasi lainnya ...
      }

    end,
  },
}
