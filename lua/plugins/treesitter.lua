return {
  "nvim-treesitter/nvim-treesitter",
  build=":TSUpdate",
  config = function()
    local treesitter_config = require("nvim-treesitter.configs")
    treesitter_config.setup({
      ensure_installed = {"c", "cmake", "cpp", "css", "go", "html", "http", "javascript", "json", "lua", "php", "python", "rust", "sql"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}



