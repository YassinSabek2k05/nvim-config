-- Copy/save the visually selected code as a nicely formatted PNG.
-- Requires the `silicon` binary: sudo pacman -S silicon
return {
  "michaelrommel/nvim-silicon",
  cmd = "Silicon",
  keys = {
    {
      "<leader>cy",
      function() require("nvim-silicon").clip() end,
      mode = "x",
      desc = "Copy Code Screenshot to Clipboard",
    },
    {
      "<leader>cp",
      function() require("nvim-silicon").file() end,
      mode = "x",
      desc = "Save Code Screenshot as Image",
    },
  },
  opts = {
    theme = "Dracula",
    background = "#1e1e2e",
    window_title = function()
      return vim.fn.expand("%:t")
    end,
    output = function()
      local dir = vim.fn.expand("~/Pictures/Screenshots")
      vim.fn.mkdir(dir, "p")
      return string.format("%s/code_%s.png", dir, os.date("%Y-%m-%d_%H-%M-%S"))
    end,
  },
}
