-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: ~/.config/nvim/lua/plugins/indent-blankline.lua                    --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:18:42 pm by CreativeCodeCat                     --
--   Updated: 01 Apr 2025, 09:25:52 am by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = "▏",
        },
        scope = {
            show_start = false,
            show_end = false,
            show_exact_scope = false,
        },
        exclude = {
            filetypes = {
                "help",
                "startify",
                "dashboard",
                "packer",
                "neogitstatus",
                "NvimTree",
                "Trouble",
            },
        },
    },
}
