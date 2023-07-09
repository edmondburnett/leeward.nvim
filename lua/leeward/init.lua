local M = {}

M.setup = function(opts)
    -- override default options
    require("leeward.option").setup(opts)
end

M.load = function()
    -- remove highlighting for groups added
    vim.cmd("highlight clear")

    vim.o.termguicolors = true
    vim.g.colors_name = "leeward"

    -- make color palette
    require("leeward.colors").setup()

    -- generate highlight groups
    require("leeward.groups").setup()

    -- finally end
    require("leeward.groups").load()

    -- affects highlighting
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
end

return M
