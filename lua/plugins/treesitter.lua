-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/treesitter.lua                --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:19:28 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:01:20 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

return { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs", -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
        ensure_installed = {
            "lua",
            "python",
            "javascript",
            "typescript",
            "vimdoc",
            "vim",
            "regex",
            "terraform",
            "sql",
            "dockerfile",
            "toml",
            "json",
            "java",
            "groovy",
            "go",
            "gitignore",
            "graphql",
            "yaml",
            "make",
            "cmake",
            "markdown",
            "markdown_inline",
            "bash",
            "tsx",
            "css",
            "html",
        },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = {
            enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            --  If you are experiencing weird indenting issues, add the language to
            --  the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = {
                "ruby",
            },
        },
        indent = {
            enable = true,
            disable = {
                "ruby",
            },
        },
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
