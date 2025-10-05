return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    vim.lsp.enable 'copilot_ls'
    require('copilot').setup {
      nes = {
        enabled = false,
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = false,
          dismiss = '<C-]>',
        },
      },
      vim.keymap.set('i', '<Tab>', function()
        if require('copilot.suggestion').is_visible() then
          require('copilot.suggestion').accept()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', false)
        end
      end, { desc = 'Super Tab' }),
    }
  end,
}
