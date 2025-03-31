-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/header.lua                    --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:18:31 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:01:08 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

return {
    "CreativeCodeCat/header.nvim", -- Correct repository
    event = "VeryLazy", -- Load lazily
    config = function()
        local header = require("header")

        header.setup(
            {
                username = "CreativeCodeCat",
                git = "https://github.com/CreativeCodeCat",
                email = "wayne6324@gmail.com",
                -- Extend filetypes with comment styles
                ft = {
                    c = {
                        start_comment = "/*",
                        end_comment = "*/",
                        fill_comment = "*",
                    },
                    cpp = {
                        start_comment = "/*",
                        end_comment = "*/",
                        fill_comment = "*",
                    },
                    make = {
                        start_comment = "##",
                        end_comment = "##",
                        fill_comment = "#",
                    },
                    python = {
                        start_comment = "##",
                        end_comment = "##",
                        fill_comment = "#",
                    },
                    sh = {
                        start_comment = "##",
                        end_comment = "##",
                        fill_comment = "#",
                    },
                    lua = {
                        start_comment = "--",
                        end_comment = "--",
                        fill_comment = "-",
                    },
                    vim = {
                        start_comment = "\"\"",
                        end_comment = "\"\"",
                        fill_comment = "*",
                    },
                },
            }
        )
    end,
}
