local local_plugins = {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",  -- Ensure you specify the branch for Harpoon 2
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()  -- This initializes Harpoon 2


            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
        end
    },
    {
        "ThePrimeagen/vim-apm",  -- Use the correct repository
        config = function()
            -- Uncomment and configure as needed
            -- local apm = require("vim-apm")
            -- apm:setup({})
            -- vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
        end
    },
    {
        "ThePrimeagen/vim-with-me",  -- Use the correct repository
        config = function() end
    },
}

return local_plugins


