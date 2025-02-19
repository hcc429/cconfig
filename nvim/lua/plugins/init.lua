local cmp = require "cmp"
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "stevearc/dressing.nvim",
    opts = {},
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "ninja",
        "rst",
        "c",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, conf)
      conf.filters = {
        custom: {".git", "node_modules", "__pycache__"}
      }
      return conf
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      preselect = cmp.PreselectMode.None,
      sources = {
        { name = "nvim_lsp" },
        -- { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
      completion = {
        completeopt = "menu,menuone,noinsert,noselect",
      },
    },
  },
}
