-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: ~/.config/nvim/lua/plugins/which-key.lua                           --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:19:34 pm by CreativeCodeCat                     --
--   Updated: 01 Apr 2025, 09:27:00 am by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        mode = "n", -- NORMAL mode
        prefix = "<leader>",
        buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent = true, -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = true, -- use `nowait` when creating keymaps
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show(
                    {
                        global = false,
                    }
                )
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
        {
            "<leader>a",
            function() require("alpha").start() end,
            desc = "Toggle Alpha Dashboard",
        },
    },
}
