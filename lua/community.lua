-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.motion.mini-surround" },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "sa", -- Add surrounding in Normal and Visual modes
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding (to the right)
        find_left = "sF", -- Find surrounding (to the left)
        sighlight = "sh", -- Highlight surrounding
        replace = "sr", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`
      },
    },
  },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.java" },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      for i, v in ipairs(opts.ensure_installed) do
        if v == "clang_format" then
          table.remove(opts.ensure_installed, i)
          break
        end
      end
    end,
  },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
}
