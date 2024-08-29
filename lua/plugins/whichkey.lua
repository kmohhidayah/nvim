return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- Here you can add your which-key configuration if needed
    },
    keys = {
      -- FZF Keybindings
      { "<leader>F",   "FZF",                                     desc = "Fuzzy Finder" },
      { "<leader>Ff",  ":Files<CR>",                              desc = "Find Files" },
      { "<leader>Fg",  ":Rg<CR>",                                 desc = "Ripgrep Search" },
      { "<leader>Fl",  ":Lines<CR>",                              desc = "Search in Line" },
      { "<leader>Fb",  ":Buffers<CR>",                            desc = "Buffers" },
      { "<leader>Fh",  ":Helptags<CR>",                           desc = "Help Tags" },
      { "<leader>Fc",  ":Commits<CR>",                            desc = "Git Commits" },
      { "<leader>Fs",  ":GFiles?<CR>",                            desc = "Git Status Files" },
      { "<leader>Fm",  ":Marks<CR>",                              desc = "Marks" },
      { "<leader>Ft",  ":Tags<CR>",                               desc = "Tags" },
      { "<leader>Fr",  ":History<CR>",                            desc = "History" },

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
      {
        "<leader>?",
        function()
          require("which-key").show({ global = true })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
