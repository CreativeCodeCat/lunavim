-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: ~/.config/nvim/lua/core/functions.lua                              --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:16:04 pm by CreativeCodeCat                     --
--   Updated: 01 Apr 2025, 09:49:04 am by CreativeCodeCat                     --
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

-- Get the list of all Lua files in a given directory
local function get_lua_files_in_directory(directory)
    local files = {}
    for _, file in ipairs(vim.fn.readdir(directory)) do
        if file:match("%.lua$") then
            table.insert(files, file)
        end
    end
    return files
end

-- Ensure the directory ends with a separator
local function ensure_trailing_separator(directory)
    if not directory:match(M.sep .. "$") then
        return directory .. M.sep
    end
    return directory
end

-- Dynamically build the config file paths list
local function build_config_file_paths()
    local config_files = {}

    -- Add the core files
    for _, file in ipairs(get_lua_files_in_directory(M.nvim_config_core_root)) do
        table.insert(config_files, {file, ensure_trailing_separator(M.nvim_config_core_root) .. file})
    end

    -- Add user files
    for _, file in ipairs(get_lua_files_in_directory(M.nvim_config_user_root)) do
        table.insert(config_files, {file, ensure_trailing_separator(M.nvim_config_user_root) .. file})
    end

    -- Add plugin files
    for _, file in ipairs(get_lua_files_in_directory(M.nvim_config_plugins_root)) do
        table.insert(config_files, {file, ensure_trailing_separator(M.nvim_config_plugins_root) .. file})
    end

    return config_files
end

M.edit_config = function()
    local config_files = build_config_file_paths()

    -- Generate a menu with the config file names
    local config_file_names = {}
    for i, file_data in ipairs(config_files) do
        table.insert(config_file_names, string.format("%d. %s", i, file_data[1]))
    end

    -- Display menu and get user selection
    local selected_config = tonumber(
        vim.fn.inputlist(
            vim.tbl_extend(
                "force", {
                    "Select a configuration file to edit:",
                }, config_file_names
            )
        )
    )

    if selected_config and selected_config > 0 and selected_config <= #config_files then
        local selected_file = config_files[selected_config]
        print("\nOpening file: " .. selected_file[2])  -- Debug print to check path
        vim.cmd(string.format("edit %s", selected_file[2]))
    elseif selected_config == 0 then
        print("\nNo file selected.")
    else
        print("\nInvalid option selected.")
    end
end

return M

