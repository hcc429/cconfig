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
      conf.filters.git_ignored = true
      conf.filters.dotfiles = true
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
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = function(_, conf)
  --     local builtin = require("telescope.builtin")
  --     conf.defaults.mappings.n = {
  --       ["<Esc>"] = builtin.close,
  --       ["<leader>ff"] = builtin.git_files,
  --       ["<leader>fa"] = builtin.find_files,
  --     }
  --
  --     -- or
  --     -- table.insert(conf.defaults.mappings.i, your table)
  --     return conf
  --   end,
  -- },
}
