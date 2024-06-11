return {
  "/vim-bundle-tmux-runner",
  enabled = true and os.getenv('TMUX') ~= nil,
  event = "VeryLazy",
  dependencies = {
    "/vim-tmux-runner",
  },
}
