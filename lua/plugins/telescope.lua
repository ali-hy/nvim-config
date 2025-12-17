return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup({})

    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local conf = require("telescope.config").values

    local colors = function(opts)
      opts = opts or {}
      print("options: ", opts)
      local status, err = pcall(function()
        pickers.new(opts, {
          prompt_title = "colors",
          finder = finders.new_table({
            results = { "red", "green", "blue" },
          }),
          sorter = conf.generic_sorter(opts),
        })
      end)
      print("Status of pcall = ", status)
    end

    vim.keymap.set("n", "<leader>fd", function()
      colors()
    end, { desc = "Find directory" })
  end,
}
