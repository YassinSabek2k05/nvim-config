return {
  "okuuva/auto-save.nvim", -- maintained fork of the archived Pocco81/auto-save.nvim
  version = "^1.0.0",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" }, -- load once you actually start editing
  opts = {
    debounce_delay = 1000, -- ms to wait after the last edit before writing
  },
  config = function(_, opts)
    require("auto-save").setup(opts)

    -- Same Snacks.toggle pattern LazyVim itself uses for every other <leader>u toggle
    Snacks.toggle
      .new({
        name = "Auto Save",
        get = function()
          return require("auto-save").enabled()
        end,
        set = function(state)
          if state then
            require("auto-save").on()
          else
            require("auto-save").off()
          end
        end,
      })
      :map("<leader>uo")
  end,
}
