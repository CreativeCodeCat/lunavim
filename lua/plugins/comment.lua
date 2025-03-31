-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/plugins/comment.lua                   --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:17:58 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:31:34 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --
-- Easily comment visual regions/lines

return {
    "numToStr/Comment.nvim",
    opts = {},
    config = function()
        local opts = {
            noremap = true,
            silent = true,
        }
        vim.keymap.set(
            "n", "<C-_>", require("Comment.api").toggle.linewise.current, opts
        )
        vim.keymap.set(
            "n", "<C-\\>", require("Comment.api").toggle.linewise.current, opts
        )
        vim.keymap.set(
            "n", "<C-/>", require("Comment.api").toggle.linewise.current, opts
        )
        vim.keymap.set(
            "v", "<C-_>",
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
            opts
        )
        vim.keymap.set(
            "v", "<C-\\>",
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
            opts
        )
        vim.keymap.set(
            "v", "<C-/>",
            "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
            opts
        )
    end,
}
