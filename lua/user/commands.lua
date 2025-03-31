-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/user/commands.lua                     --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:15:31 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:00:52 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

vim.api.nvim_create_user_command(
    "EditConfiguration", function() require("core.functions").edit_config() end,
    {}
)
