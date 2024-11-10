return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      sync_root_with_cwd = true,    -- Sinkronkan root NvimTree dengan working directory
      respect_buf_cwd = true,       -- Ikuti working directory dari buffer aktif
      update_focused_file = {
        enable = true,              -- Update secara otomatis file yang difokuskan
        update_cwd = true,          -- Perbarui working directory NvimTree sesuai file yang dibuka
      },
    }
  end,
}

