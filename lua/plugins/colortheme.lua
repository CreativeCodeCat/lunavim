-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/colortheme.lua                --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:17:51 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:50:42 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

return {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Example config in lua
        vim.g.nord_contrast = true
        vim.g.nord_borders = false
        vim.g.nord_disable_background = true
        vim.g.nord_italic = false
        vim.g.nord_uniform_diff_background = true
        vim.g.nord_bold = false

        -- Load the colorscheme
        require("nord").set()

        -- Toggle background transparency
        local bg_transparent = true

        local toggle_transparency = function()
            bg_transparent = not bg_transparent
            vim.g.nord_disable_background = bg_transparent
            vim.cmd [[colorscheme nord]]
        end

        vim.keymap.set(
            "n", "<leader>bg", toggle_transparency, {
                noremap = true,
                silent = true,
            }
        )
    end,
}
