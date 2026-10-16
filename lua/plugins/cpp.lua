-- C / C++ / OpenGL course additions.
-- clangd, cmake and dap come from the LazyVim extras listed in lazyvim.json.
return {
  -- GLSL highlighting for shader files
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "c", "cpp", "cmake", "glsl" })
    end,
  },

  -- Recognise common shader extensions as GLSL
  {
    "LazyVim/LazyVim",
    init = function()
      vim.filetype.add({
        extension = {
          vert = "glsl",
          frag = "glsl",
          geom = "glsl",
          comp = "glsl",
          tesc = "glsl",
          tese = "glsl",
          glsl = "glsl",
          vs = "glsl",
          fs = "glsl",
        },
      })
    end,
  },
}
