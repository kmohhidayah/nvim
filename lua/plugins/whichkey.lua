return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- Here you can add your which-key configuration if needed
        },
        keys = {
            -- AsciiDoc
            { "<leader>A",   "AsciiDoc",                                desc = "AsciiDoc" },
            { "<leader>Ap",  ":Asciidoctor2PDF<CR>",                    desc = "Generate PDF" },
            -- FZF
            { "<leader>F",   "FZF",                                     desc = "FZF" },
            { "<leader>Fb",  ":FzfLua lsp_declarations<CR>",            desc = "Declarations" },
            { "<leader>Fc",  ":FzfLua files cwd=~/.config/nvim/<CR> ",  desc = "Config" },
            { "<leader>Fd",  ":FzfLua diagnostics_document<CR>",        desc = "Show Diagnostic" },
            { "<leader>Ff",  ":FzfLua files<CR>",                       desc = "Files" },
            { "<leader>Fi",  ":FzfLua lsp_implementations<CR>",         desc = "Implementations" },
            { "<leader>Fn",  ":FzfLua files cwd=~/OrgDoc/<CR> ",        desc = "Note" },
            { "<leader>Fr",  ":FzfLua lsp_references<CR>",              desc = "Reference" },
            { "<leader>Ft",  ":FzfLua lsp_typedefs<CR>",                desc = "Type Definition" },
            { "<leader>Fp",  ":FzfLua files cwd=~/go/src/<CR> ",        desc = "Golang Project" },
            { "<leader>Fu",  ":FzfLua buffers<CR>",                     desc = "Buffers" },
            -- GitSigns Keybindings
            { "<leader>G",   "GitSigns",                                desc = "GitSigns" },
            { "<leader>GD",  ":Gitsigns diffthis ~<CR>",                desc = "Diff This (base)" },
            { "<leader>GR",  ":Gitsigns reset_buffer<CR>",              desc = "Reset Buffer" },
            { "<leader>GS",  ":Gitsigns stage_buffer<CR>",              desc = "Stage Buffer" },
            { "<leader>Gb",  ":Gitsigns blame_line<CR>",                desc = "Blame Line" },
            { "<leader>Gd",  ":Gitsigns diffthis<CR>",                  desc = "Diff This" },
            { "<leader>Gj",  ":Gitsigns next_hunk<CR>",                 desc = "Next Hunk" },
            { "<leader>Gk",  ":Gitsigns prev_hunk<CR>",                 desc = "Prev Hunk" },
            { "<leader>Gp",  ":Gitsigns preview_hunk<CR>",              desc = "Preview Hunk" },
            { "<leader>Gr",  ":Gitsigns reset_hunk<CR>",                desc = "Reset Hunk" },
            { "<leader>Gs",  ":Gitsigns stage_hunk<CR>",                desc = "Stage Hunk" },
            { "<leader>Gt",  group = "Toggle" },
            { "<leader>Gtb", ":Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Blame" },
            { "<leader>Gtd", ":Gitsigns toggle_deleted<CR>",            desc = "Toggle Deleted" },
            { "<leader>Gu",  ":Gitsigns undo_stage_hunk<CR>",           desc = "Undo Stage Hunk" },

            -- Format file
            { "<leader>f",   ":lua vim.lsp.buf.format()<CR>",           desc = "Format File" },
            -- Save file
            { "<leader>w",   ":w<CR>",                                  desc = "Save File" },
            -- NvimTree
            { "<leader>e",   ":NvimTreeToggle<CR>",                     desc = "Explore" },
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = true })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },

            -- Lspsaga Keybindings
            { "<leader>lf", ":Lspsaga finder<CR>",                     desc = "LSP Finder" },
            { "<leader>lp", ":Lspsaga peek_definition<CR>",            desc = "Peek Definition" },
            { "<leader>lt", ":Lspsaga peek_type_definition<CR>",       desc = "Peek Type Definition" },
            { "<leader>lg", ":Lspsaga goto_definition<CR>",            desc = "Goto Definition" },
            { "<leader>lr", ":Lspsaga rename<CR>",                     desc = "Rename Symbol" },
            { "<leader>lh", ":Lspsaga hover_doc<CR>",                  desc = "Hover Documentation" },
            { "<leader>la", ":Lspsaga code_action<CR>",                desc = "Code Action" },
            { "<leader>dl", ":Lspsaga show_line_diagnostics<CR>",      desc = "Show Line Diagnostics" },
            { "<leader>db", ":Lspsaga show_buf_diagnostics<CR>",       desc = "Show Buffer Diagnostics" },
            { "<leader>dw", ":Lspsaga show_workspace_diagnostics<CR>", desc = "Show Workspace Diagnostics" },
            { "<leader>dc", ":Lspsaga show_cursor_diagnostics<CR>",    desc = "Show Cursor Diagnostics" },
            { "<leader>dn", ":Lspsaga diagnostic_jump_next<CR>",       desc = "Next Diagnostic" },
            { "<leader>dp", ":Lspsaga diagnostic_jump_prev<CR>",       desc = "Previous Diagnostic" },
            { "<leader>lo", ":Lspsaga outline<CR>",                    desc = "Outline" },
        },
    }
}
