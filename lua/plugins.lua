return {
  "folke/trouble.nvim",
  { "nvim-telescope/telescope.nvim", tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
      },
      { 'rose-pine/neovim', name = 'rose-pine', config = function()
	      vim.cmd('colorscheme rose-pine')
      end
	},
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  --"nvim-treesitter/nvim-treesitter-context",
  { "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
  "mbbill/undotree",
  "tpope/vim-fugitive",
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  -- Autocompletion
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  -- Snippets
  {'L3MON4D3/LuaSnip'},
  {'rafamadriz/friendly-snippets'},
  --"github/copilot.vim",
  "laytan/cloak.nvim",
  {
      "christoomey/vim-tmux-navigator",
      cmd = {
          "TmuxNavigateLeft",
          "TmuxNavigateDown",
          "TmuxNavigateUp",
          "TmuxNavigateRight",
          "TmuxNavigatePrevious",
      },
      keys = {
          { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
          { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
          { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
          { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
          { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      }
 },
 "preservim/nerdcommenter",
 -- nvim v0.8.0
 {
     "kdheepak/lazygit.nvim",
     lazy = true,
     cmd = {
         "LazyGit",
         "LazyGitConfig",
         "LazyGitCurrentFile",
         "LazyGitFilter",
         "LazyGitFilterCurrentFile",
     },
     -- optional for floating window border decoration
     dependencies = {
         "nvim-lua/plenary.nvim",
     },
     -- setting the keybinding for LazyGit with 'keys' is recommended in
     -- order to load the plugin when the command is run for the first time
     keys = {
         { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
     }
 },
    {
        "Exafunction/codeium.vim",
        event = 'BufEnter',
        config = function ()
            -- Change '<C-g>' here to any keycode you like.
            vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
            vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
            vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
            vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
        end
    },
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    }
}
