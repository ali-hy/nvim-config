return {
  "EdenEast/nightfox.nvim",
  opts = {
    transparent = true,
  },
  config = function()
    vim.cmd("colorscheme carbonfox")

    -- Make bg transparent
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- in floats as well
  end,
}
