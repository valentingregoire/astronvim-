return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = { "nvim-neotest/neotest-python", config = function() end },
  opts = function(_, opts)
    if not opts.adapters then opts.adapters = {} end
    table.insert(opts.adapters, require "neotest-python"(require("astrocore").plugin_opts "neotest-python"))
  end,
}
