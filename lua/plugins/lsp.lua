return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "cmake",
          "cssls",
          "html",
          "tsserver",
          "jsonls",
          "lua_ls",
          "intelephense",
          "basedpyright",
          "rust_analyzer",
          "sqlls",
        }, -- remember to add go after installing
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.cmake.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.intelephense.setup({
        capabilities = capabilities
      })

      lspconfig.basedpyright.setup({
        capabilities = capabilities
      })

      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })

      lspconfig.sqlls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})             -- shows info about item under cursor if available
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})       -- takes us to definition of item under cursor
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- shows possible automatic code actions
    end,
  },
}
