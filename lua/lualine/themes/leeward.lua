local colors = require("leeward.colors").get()
local leeward = {}

leeward.normal = {
    a = { bg = colors.blue, fg = colors.stripline, gui = "bold" },
    b = { bg = colors.selection, fg = colors.blue },
    c = { bg = colors.stripline, fg = colors.foreground },
}

leeward.insert = {
    a = { bg = colors.green, fg = colors.stripline, gui = "bold" },
    b = { bg = colors.selection, fg = colors.green },
}

leeward.command = {
    a = { bg = colors.purple, fg = colors.stripline, gui = "bold" },
    b = { bg = colors.selection, fg = colors.purple },
}

leeward.visual = {
    a = { bg = colors.yellow, fg = colors.stripline, gui = "bold" },
    b = { bg = colors.selection, fg = colors.yellow },
}

leeward.replace = {
    a = { bg = colors.red, fg = colors.stripline, gui = "bold" },
    b = { bg = colors.selection, fg = colors.red },
}

leeward.inactive = {
    a = { bg = colors.stripline, fg = colors.red },
    b = { bg = colors.stripline, fg = colors.green, gui = "bold" },
    c = { bg = colors.stripline, fg = colors.blue },
}

return leeward
