require("codecompanion").setup({
  interactions = {
    chat = {
      adapter = "ollama",
      model = "qwen2.5-coder:3b"
    },
  },
  opts = {
    log_level = "DEBUG",
  },
})
