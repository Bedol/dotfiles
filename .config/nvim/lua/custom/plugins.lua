return function(use)
  use {
  "zbirenbaum/copilot.lua",
  event = "VimEnter",
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()
    end, 100)
  end,
}
end
