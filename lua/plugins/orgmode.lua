return {
  {
    'nvim-orgmode/orgmode',
    enable = true,
    lazy = false,
    -- event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/OrgDoc/**/*',
        org_default_notes_file = '~/OrgDoc/refile.org',
        org_agenda_skip_deadline_if_done = true,
        -- win_split_mode = { 'float', 0.7 },
        -- win_border = { '╔', '═', '╗', '║', '╝', '═', '╚', '║' },
        org_todo_keywords = {
          'TODO(t)', 'IN-PROGRESS(i)', 'WAITING(w)', '|', 'DONE(d)', 'CANCELED(c)',
          'REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)',
        },
        org_todo_keyword_faces = {
          TODO = ':background #E06C75 :foreground #282C34 :weight bold',        -- Merah terang dengan latar belakang gelap
          IN_PROGRESS = ':background #E5C07B :foreground #282C34 :weight bold', -- Kuning terang dengan latar belakang gelap
          WAITING = ':foreground #61AFEF :weight bold',                         -- Biru terang sesuai dengan warna biru di One Dark
          DONE = ':foreground #98C379 :weight bold',                            -- Hijau terang untuk menunjukkan tugas selesai
          CANCELED = ':foreground #5C6370 :weight bold :slant italic',          -- Abu-abu gelap dengan gaya italic untuk tugas yang dibatalkan
          REPORT = ':foreground #C678DD :weight bold',                          -- Ungu terang untuk laporan
          BUG = ':background #D19A66 :foreground #282C34 :weight bold',         -- Oranye terang dengan latar belakang gelap untuk bug
          KNOWNCAUSE = ':foreground #E5C07B :weight bold',                      -- Kuning terang untuk penyebab yang diketahui
          FIXED = ':foreground #98C379 :weight bold :underline on',             -- Hijau terang dengan underline untuk tugas yang diperbaiki
        },
        org_capture_templates = {
          t = {
            description = 'Todo with Priority and Deadline',
            template = '* TODO [#A] %?\n  DEADLINE: %^{Name}t',
            target = '~/OrgDoc/todo/todos.org', --string.format('~/OrgDoc/todo/todo_%s.org', os.date('%Y%m%d_%H%M'))
          },
          m = {
            description = 'Meeting Notes',
            template = '* Meeting: %?\n  Time: %t\n  Participants: %^{Participants}\n  Agenda:\n  - ',
            target = string.format('~/OrgDoc/meetings/meeting_%s.org', os.date('%Y%m%d_%H%M'))
          },
          j = {
            description = 'Daily Journal',
            template = '* %T - %^{Mood} \n\n** What Happened Today:\n%?\n\n** Reflection:\n',
            target = string.format('~/OrgDoc/journal/journal_%s.org', os.date('%Y%m%d'))
          },
          n = {
            description = 'Quick Note',
            template = '* %T %?\n',
            target = string.format('~/OrgDoc/notes/quick_notes_%s.org', os.date('%Y%m%d'))
          },
          p = {
            description = 'Project Plan',
            template = '* Project: %^{Project Name}\n  DEADLINE: %^{Name}t\n** Subtasks\n*** TODO %?\n',
            target = string.format('~/OrgDoc/projects/project_%s.org', os.date('%Y%m%d_%H%M'))
          },
          h = {
            description = 'How To',
            template = '** %T - How To: %^{Title} \n\n*** Description\n%?\n\n*** Steps\n- ',
            target = '~/OrgDoc/howto.org', -- Path ke file tempat menyimpan catatan 'How To'
          }
        },
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      require('nvim-treesitter.configs').setup({
        ensure_installed = {"go","lua"},
        ignore_install = { 'org' },
      })
    end,
  },
}
