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

    local actions = require("telescope.actions")
    local actions_state = require("telescope.actions.state")

    local colors = function(opts)
      opts = opts or {}
      local status, err = pcall(function()
        local pick = pickers.new(opts, {
          prompt_title = "colors",
          finder = finders.new_oneshot_job({ "find", ".", "-type", "d" }, opts),
          sorter = conf.generic_sorter(opts),
          attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
              actions.close(prompt_bufnr)
              local selection = actions_state.get_selected_entry()
              vim.cmd("cd " .. selection[1])
            end)
            return true
          end,
        })
        pick:find()
      end)
    end

    -- Remaps
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader><leader>", builtin.git_files, { desc = "Find git files" })
    vim.keymap.set("n", "<leader>fd", function()
      colors(require("telescope.themes").get_dropdown())
    end, { desc = "Find directory" })
  end,
}
