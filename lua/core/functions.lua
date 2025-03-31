-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/core/functions.lua                    --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:16:04 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:50:04 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

local M = {}

-- Get config directory based on the current system
local function get_config_dir()
    if string.find(vim.loop.os_uname().sysname, "Windows") then
        return os.getenv("USERPROFILE") .. "\\AppData\\Local\\"
    end
    return os.getenv("XDG_CONFIG_HOME") or (os.getenv("HOME") .. "/.config")
end

-- Get system path separator
local function get_separator()
    return vim.loop.os_uname().sysname == "Windows" and "\\" or "/"
end

M.config_dir = get_config_dir()
M.sep = get_separator()
M.nvim_root = string.format("%s%snvim", M.config_dir, M.sep)
M.nvim_default_root = M.nvim_root
M.nvim_config_core_root = string.format(
                              "%s%slua%score", M.nvim_default_root, M.sep, M.sep
                          )
M.nvim_config_user_root = string.format(
                              "%s%slua%suser", M.nvim_default_root, M.sep, M.sep
                          )
M.nvim_config_plugins_root = string.format(
                                 "%s%slua%splugins", M.nvim_default_root, M.sep,
                                 M.sep
                             )

M.edit_config = function()
    local config_files = {
        "1. init.lua (default)",
        "2. alpha.lua",
        "3. autocompletion.lua",
        "4. bufferline.lua",
        "5. colortheme.lua",
        "6. comment.lua",
        "7. gitsigns.lua",
        "8. header.lua",
        "9. indent-blankline.lua",
        "10. lualine.lua",
        "11. misc.lua",
        "12. neotree.lua",
        "13. telescope.lua",
        "14. treesitter.lua",
        "15. which-key.lua",
        "16. commands.lua (user)",
        "17. functions.lua (core)",
        "18. keymaps.lua (core)",
        "19. options.lua (core)",
        "20. snippets.lua (core)",
        "21. vimkeys.lua (core)",
    }

    -- Display menu and get user selection
    local selected_config = tonumber(
                                vim.fn.inputlist(
                                    vim.tbl_extend(
                                        "force", {
                    "Select a configuration file to edit:",
                }, config_files
                                    )
                                )
                            )

    local open_command = "edit"
    local paths = {
        [1] = string.format("%s%sinit.lua", M.nvim_default_root, M.sep),
        [2] = string.format("%s%salpha.lua", M.nvim_config_plugins_root, M.sep),
        [3] = string.format(
            "%s%sautocompletion.lua", M.nvim_config_plugins_root, M.sep
        ),
        [4] = string.format(
            "%s%sbufferline.lua", M.nvim_config_plugins_root, M.sep
        ),
        [5] = string.format(
            "%s%scolortheme.lua", M.nvim_config_plugins_root, M.sep
        ),
        [6] = string.format("%s%scomment.lua", M.nvim_config_plugins_root, M.sep),
        [7] = string.format(
            "%s%sgitsigns.lua", M.nvim_config_plugins_root, M.sep
        ),
        [8] = string.format("%s%sheader.lua", M.nvim_config_plugins_root, M.sep),
        [9] = string.format(
            "%s%sindent-blankline.lua", M.nvim_config_plugins_root, M.sep
        ),
        [10] = string.format(
            "%s%slualine.lua", M.nvim_config_plugins_root, M.sep
        ),
        [11] = string.format("%s%smisc.lua", M.nvim_config_plugins_root, M.sep),
        [12] = string.format(
            "%s%sneotree.lua", M.nvim_config_plugins_root, M.sep
        ),
        [13] = string.format(
            "%s%stelescope.lua", M.nvim_config_plugins_root, M.sep
        ),
        [14] = string.format(
            "%s%streesitter.lua", M.nvim_config_plugins_root, M.sep
        ),
        [15] = string.format(
            "%s%swhich-key.lua", M.nvim_config_plugins_root, M.sep
        ),
        [16] = string.format("%s%scommands.lua", M.nvim_config_user_root, M.sep),
        [17] = string.format("%s%sfunctions.lua", M.nvim_config_core_root, M.sep),
        [18] = string.format("%s%skeymaps.lua", M.nvim_config_core_root, M.sep),
        [19] = string.format("%s%soptions.lua", M.nvim_config_core_root, M.sep),
        [20] = string.format("%s%ssnippets.lua", M.nvim_config_core_root, M.sep),
        [21] = string.format("%s%svimkeys.lua", M.nvim_config_core_root, M.sep),
    }

    if paths[selected_config] then
        vim.cmd(string.format("%s %s", open_command, paths[selected_config]))
    elseif selected_config ~= 0 then
        print("\nInvalid option selected.")
    end
end

return M
