return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,

    -- Define the keybind outside of the plugin configuration
    vim.keymap.set(
        "n", "-", "<CMD>Oil<CR>", {
            desc = "Open parent directory",
        }
    ),

}
