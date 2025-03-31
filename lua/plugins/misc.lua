-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/misc.lua                      --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:18:56 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:01:15 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- Standalone plugins with less than 10 lines of config go here
return {
    {
        -- Tmux & split window navigation
        "christoomey/vim-tmux-navigator",
    },
    {
        -- Detect tabstop and shiftwidth automatically
        "tpope/vim-sleuth",
    },
    {
        -- Powerful Git integration for Vim
        "tpope/vim-fugitive",
    },
    {
        -- GitHub integration for vim-fugitive
        "tpope/vim-rhubarb",
    },
    {
        -- Autoclose parentheses, brackets, quotes, etc.
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
    {
        -- Highlight todo, notes, etc in comments
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            signs = false,
        },
    },
    {
        -- High-performance color highlighter
        "norcalli/nvim-colorizer.lua",
        config = function() require("colorizer").setup() end,
    },
    {
        "wakatime/vim-wakatime",
    },
}
