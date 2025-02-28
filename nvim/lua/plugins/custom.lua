return {
  -- commenting code
  -- select code - `gcc`
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "typescript", "tsx", "javascript", "python", "go" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
        rainbow = {
          enable = true,
          extended_mode = true, -- Highlight also non-parentheses delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
        },
      })
    end,
  },
  -- Add the Rainbow plugin
  {
    "p00f/nvim-ts-rainbow",
  },
  -- Save session Persistence Plugin
  -- <leader>qs ql qS
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
  },
  -- Add Mason for managing external editor tooling
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup({
        ensure_installed = {
          "typescript-language-server",
          "python-lsp-server",
          "eslint-lsp",
          "jq",
          "json-lsp",
          "java-language-server",
          "gopls",
          "terraform-ls", -- LSP for Terraform
          "tflint", -- Terraform linter
        },
      })
    end,
  },

  -- Add Mason LSPconfig to bridge Mason and nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "tsserver", "gopls", "terraformls" },
      })
    end,
  },

  -- Add nvim-lspconfig to configure LSP servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Configure Pyright for Python
      lspconfig.pyright.setup({})

      -- Configure tsserver for JavaScript and TypeScript
      lspconfig.tsserver.setup({})

      -- Configure gopls for Go
      lspconfig.gopls.setup({})
      -- Configure Terraform
      lspconfig.terraformls.setup({
        cmd = { "terraform-ls", "serve" },
        filetypes = { "terraform", "tf", "hcl" },
      })
    end,
  },
  -- TokyoNight theme
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
  -- Window Picker - open file in a Window
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
}
