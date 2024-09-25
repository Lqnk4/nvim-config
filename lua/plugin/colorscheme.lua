local colorscheme = {}

colorscheme.everforest = {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
        vim.cmd.colorscheme('everforest')
    end
}

colorscheme.kanagawa = {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    config = function()
        -- Default options:
        require('kanagawa').setup({
            compile = true,   -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                local theme = colors.theme
                return {
                    Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                    PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = theme.ui.bg_m1 },
                    PmenuThumb = { bg = theme.ui.bg_p2 },
                }
            end,
            theme = "wave",      -- Load "wave" theme when 'background' option is not set
            background = {       -- map the value of 'background' option to a theme
                dark = "dragon", -- try "dragon" !
                light = "lotus"
            },
        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
    end
}

colorscheme.moonfly = {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd [[colorscheme moonfly]] end
}

colorscheme.rose_pine = {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
        variant = "auto",      -- auto, main, moon, or dawn
        dark_variant = "main", --main, moon, or dawn
    },
    config = function()
        vim.cmd("colorscheme rose-pine")
    end,

}

return colorscheme.everforest
