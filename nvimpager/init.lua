vim.opt.clipboard:append { "unnamedplus" }

vim.opt.hidden = true
vim.opt.laststatus = 3
vim.opt.termguicolors = true
vim.opt.title = true

-- Set leader key
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    spec = {
        {
            "catppuccin/nvim",
            name = "catppuccin",
            priority = 1000,
            lazy = false,
            opts = {
                flavour = "mocha",
                transparent_background = true,
                integrations = {
                    alpha = false,
                    cmp = true,
                    dap = false,
                    dap_ui = false,
                    dashboard = false,
                    flash = false,
                    gitsigns = true,
                    harpoon = true,
                    markdown = true,
                    mason = true,
                    mini = { enabled = false },
                    neogit = false,
                    notify = false,
                    nvimtree = true,
                    rainbow_delimiters = false,
                    semantic_tokens = false,
                    telescope = { enabled = true, style = "nvchad" },
                    treesitter = true,
                    ufo = false,
                    illuminate = {
                        enabled = false,
                        lsp = false,
                    },
                    indent_blankline = {
                        enabled = false,
                        scope_color = "",
                        colored_indent_levels = false,
                    },
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                    navic = {
                        enabled = false,
                        custom_bg = "NONE",
                    },
                    dropbar = {
                        enabled = false,
                        color_mode = false,
                    },
                },
            },
            config = function(opts)
                require('catppuccin').setup(opts)
                vim.cmd.colorscheme("catppuccin")
            end,
        },
    },
})
