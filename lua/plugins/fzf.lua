return {
  -- Install fzf (core fuzzy finder)
  {
    "junegunn/fzf",
    build = "./install --bin",
  },

  -- Install fzf.vim (Neovim integration for fzf)
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" }, -- Ensure fzf is installed first
  }
}
