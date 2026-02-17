return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- This fixes the "Manual" status
        keymap = {
          accept = "<M-l>", -- Use Alt + l to accept
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
    },
  },
}
