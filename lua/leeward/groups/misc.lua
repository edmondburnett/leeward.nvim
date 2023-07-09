local M = {}

M.get = function()
    local colors = require("leeward.colors").get()

    -- stylua: ignore
    return {
        Hlargs = { fg = colors.teal },
    }
end

return M
