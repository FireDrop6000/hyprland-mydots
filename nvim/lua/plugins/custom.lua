local plugins = {

  { "elkowar/yuck.vim", lazy = true }, -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  -- this opts will extend the default opts
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "bash" },
    },
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    },
  },

  {
    "nvim-java/nvim-java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-refactor",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },
}
-- If your opts uses a function call, then make opts spec a function*
-- should return the modified default config as well
-- here we just call the default telescope config
-- and then assign a function to some of its options
-- {
--   "nvim-telescope/telescope.nvim",
--   opts = function()
--     -- local conf = require "plugins.configs.telescope"
--     conf.defaults.mappings.i = {
--       ["<C-j>"] = require("telescope.actions").move_selection_next,
--       ["<Esc>"] = require("telescope.actions").close,
--     }
--
--     return conf
--   end,
-- },

return plugins
