-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/core/snippets.lua                     --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:16:42 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:01:29 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- Prevent LSP from overwriting treesitter color settings
-- https://github.com/NvChad/NvChad/issues/1907
vim.highlight.priorities.semantic_tokens = 95 -- Or any number lower than 100, treesitter's priority level

-- Appearance of diagnostics
vim.diagnostic.config {
    virtual_text = {
        prefix = "●",
        -- Add a custom format function to show error codes
        format = function(diagnostic)
            local code = diagnostic.code and
                             string.format("[%s]", diagnostic.code) or ""
            return string.format("%s %s", code, diagnostic.message)
        end,
    },
    underline = false,
    update_in_insert = true,
    float = {
        source = "always", -- Or "if_many"
    },
    -- Make diagnostic background transparent
    on_ready = function()
        vim.cmd "highlight DiagnosticVirtualText guibg=NONE"
    end,
}

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup(
                            "YankHighlight", {
        clear = true,
    }
                        )
vim.api.nvim_create_autocmd(
    "TextYankPost", {
        callback = function() vim.highlight.on_yank() end,
        group = highlight_group,
        pattern = "*",
    }
)
