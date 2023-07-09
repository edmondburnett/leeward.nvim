local M = {}

M.setup = function()
    local theme = require("leeward.colors.leeward")

    -- setup concrete theme
    theme.setup()

    -- backup for future override
    M.colors = theme.get()
end

M.get = function()
    return M.colors
end

return M
