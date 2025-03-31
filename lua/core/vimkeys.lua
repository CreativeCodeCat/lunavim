-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/lua/core/vimkeys.lua                      --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 26 Jan 2022, 06:02:53 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 08:14:36 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --
-- Version=2024.03.31
-- Bail out if this isn't wanted.
if vim.g.skip_loading_mswin then
    return
end

-- Set default 'cpoptions'
local save_cpo = vim.o.cpoptions
vim.cmd("set cpo&vim")

-- Enable Windows-like behavior
vim.cmd("behave mswin")

vim.o.backspace = "indent,eol,start"
vim.o.whichwrap = vim.o.whichwrap .. "<,>,[,]"

vim.api.nvim_set_keymap(
    "v", "<BS>", "d", {
        noremap = true,
    }
)

if vim.fn.has("clipboard") == 1 then
    -- Cut (CTRL-X and SHIFT-Delete)
    vim.api.nvim_set_keymap(
        "n", "<C-X>", "\"+dd", {
            noremap = true,
        }
    ) -- Cut entire line in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<C-X>", "<Esc>\"+ddi", {
            noremap = true,
        }
    ) -- Cut current line in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<C-X>", "\"+x", {
            noremap = true,
        }
    ) -- Cut selection in Visual mode
    vim.api.nvim_set_keymap(
        "n", "<S-Del>", "\"+dd", {
            noremap = true,
        }
    ) -- Cut line using SHIFT-Delete in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<S-Del>", "<Esc>\"+ddi", {
            noremap = true,
        }
    ) -- Cut in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<S-Del>", "\"+x", {
            noremap = true,
        }
    ) -- Cut in Visual mode

    -- Copy (CTRL-C and CTRL-Insert)
    vim.api.nvim_set_keymap(
        "n", "<C-C>", "\"+yy", {
            noremap = true,
        }
    ) -- Copy entire line in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<C-C>", "<Esc>\"+yyi", {
            noremap = true,
        }
    ) -- Copy current line in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<C-C>", "\"+y", {
            noremap = true,
        }
    ) -- Copy selection in Visual mode
    vim.api.nvim_set_keymap(
        "n", "<C-Insert>", "\"+yy", {
            noremap = true,
        }
    ) -- Copy using CTRL-Insert in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<C-Insert>", "<Esc>\"+yyi", {
            noremap = true,
        }
    ) -- Copy in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<C-Insert>", "\"+y", {
            noremap = true,
        }
    ) -- Copy in Visual mode

    -- Paste (CTRL-V and SHIFT-Insert)
    vim.api.nvim_set_keymap(
        "n", "<C-V>", "\"+p", {
            noremap = true,
        }
    ) -- Paste after cursor in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<C-V>", "<C-R>+", {
            noremap = true,
        }
    ) -- Paste in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<C-V>", "\"+p", {
            noremap = true,
        }
    ) -- Paste in Visual mode
    vim.api.nvim_set_keymap(
        "n", "<S-Insert>", "\"+p", {
            noremap = true,
        }
    ) -- Paste using SHIFT-Insert in Normal mode
    vim.api.nvim_set_keymap(
        "i", "<S-Insert>", "<C-R>+", {
            noremap = true,
        }
    ) -- Paste in Insert mode
    vim.api.nvim_set_keymap(
        "v", "<S-Insert>", "\"+p", {
            noremap = true,
        }
    ) -- Paste in Visual mode
end

-- CTRL-S for saving
vim.api.nvim_set_keymap(
    "n", "<C-S>", ":w<CR>", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "v", "<C-S>", "<C-C>:w<CR>", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-S>", "<Esc>:w<CR>gi", {
        noremap = true,
    }
)

-- Save without triggering autocommands (<leader>sn)
vim.keymap.set(
    "n", "<leader>sn", "<cmd>noautocmd w<CR>", {
        noremap = true,
        silent = true,
    }
)

-- CTRL-Z for Undo
vim.api.nvim_set_keymap(
    "n", "<C-Z>", "u", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-Z>", "<C-O>u", {
        noremap = true,
    }
)

-- CTRL-Y for Redo
vim.api.nvim_set_keymap(
    "n", "<C-Y>", "<C-R>", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-Y>", "<C-O><C-R>", {
        noremap = true,
    }
)

-- Select All
vim.api.nvim_set_keymap(
    "n", "<C-A>", "ggVG", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-A>", "<Esc>ggVG", {
        noremap = true,
    }
)

-- CTRL-Tab for next window
vim.api.nvim_set_keymap(
    "n", "<C-Tab>", "<C-W>w", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-Tab>", "<C-O><C-W>w", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "c", "<C-Tab>", "<C-C><C-W>w", {
        noremap = true,
    }
)

-- CTRL-F4 to close window
vim.api.nvim_set_keymap(
    "n", "<C-F4>", "<C-W>c", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "i", "<C-F4>", "<C-O><C-W>c", {
        noremap = true,
    }
)
vim.api.nvim_set_keymap(
    "c", "<C-F4>", "<C-C><C-W>c", {
        noremap = true,
    }
)

-- Restore 'cpoptions'
vim.cmd("set cpo&")
vim.o.cpoptions = save_cpo
