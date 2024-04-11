return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>", { silent = true })
    require("nvim-tree").setup {
      view = { relativenumber = true },
    }
  end,
}