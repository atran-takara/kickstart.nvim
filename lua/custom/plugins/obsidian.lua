return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    'BufReadPre '
      .. vim.fn.expand '~'
      .. '/Documents/Obsidian/work/**.md',
    'BufNewFile ' .. vim.fn.expand '~' .. '/Documents/Obsidian/work/**.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'work',
        path = '~/Documents/Obsidian/work',
      },
    },
    ui = {
      enable = false,
    },
  },
}

