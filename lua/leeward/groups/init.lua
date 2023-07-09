local M = {}

M.setup = function()
    -- stylua: ignore
    local groups = {
        -- neovim builtin highlight groups
        builtin      = require("leeward.groups.builtin").get(),
        standard     = require("leeward.groups.syntax").get(),

        -- external plugins related groups
        diagnostic   = require("leeward.groups.diagnostic").get(),
        gitsigns     = require("leeward.groups.gitsigns").get(),
        hop          = require("leeward.groups.hop").get(),
        misc         = require("leeward.groups.misc").get(),
        smoothcursor = require("leeward.groups.smoothcursor").get(),
        telescope    = require("leeward.groups.telescope").get(),
        treesitter   = require("leeward.groups.treesitter").get(),
        whichkey     = require("leeward.groups.whichkey").get(),
    }

    M.groups = groups
end

M.load = function()
    for _, groups in pairs(M.groups) do
        for hl, col in pairs(groups) do
            vim.api.nvim_set_hl(0, hl, col)
        end
    end
end

return M
