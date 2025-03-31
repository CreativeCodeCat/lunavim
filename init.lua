-- -------------------------------------------------------------------------- --
--                                                                            --
--   File: /home/wayne/.config/nvim/init.lua                                  --
--                                                                            --
--   Author: CreativeCodeCat <wayne6324@gmail.com>                            --
--   Git: https://github.com/CreativeCodeCat                                  --
--                                                                            --
--   Created: 31 Mar 2025, 07:13:56 pm by CreativeCodeCat                     --
--   Updated: 31 Mar 2025, 07:54:17 pm by CreativeCodeCat                     --
--                                                                            --
-- -------------------------------------------------------------------------- --

require "core.options" -- Load general options
require "core.keymaps" -- Load general keymaps
require "core.vimkeys" -- Load vimkeys keymaps
require "core.snippets" -- Custom code snippets

require "user.commands" -- User Commands

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    }
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup {
    require "plugins.alpha",
    require "plugins.autocompletion",
    require "plugins.bufferline",
    require "plugins.colortheme",
    require "plugins.comment",
    require "plugins.gitsigns",
    require "plugins.header",
    require "plugins.indent-blankline",
    require "plugins.lualine",
    require "plugins.misc",
    require "plugins.neotree",
    require "plugins.telescope",
    require "plugins.treesitter",
    require "plugins.which-key",
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
