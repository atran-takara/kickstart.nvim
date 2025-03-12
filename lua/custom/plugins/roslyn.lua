return {
  'seblj/roslyn.nvim',
  ft = 'cs',
  opts = {
    -- your configuration comes here; leave empty for default settings
    ignore_target = function(target)
      return string.match(target, 'x.sln') ~= nil
    end,
    filewatching = 'roslyn',
  },
}
