-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/gitsigns.lua                  --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:18:16 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:01:06 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add = {
                text = "+",
            },
            change = {
                text = "~",
            },
            delete = {
                text = "_",
            },
            topdelete = {
                text = "‾",
            },
            changedelete = {
                text = "~",
            },
        },
        signs_staged = {
            add = {
                text = "+",
            },
            change = {
                text = "~",
            },
            delete = {
                text = "_",
            },
            topdelete = {
                text = "‾",
            },
            changedelete = {
                text = "~",
            },
        },
    },
}
