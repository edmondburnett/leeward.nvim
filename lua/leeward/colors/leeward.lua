local hsl2rgb = require("leeward.utils").hsl2rgb

local M = {}

-- stylua: ignore
local light = {
    foreground    = hsl2rgb(200, 0.15, 0.35),
    inconspicuous = hsl2rgb(200, 0.15, 0.55),
    splitline     = hsl2rgb(200, 0.15, 0.85),
    selection     = hsl2rgb(200, 0.15, 0.90),
    stripline     = hsl2rgb(200, 0.15, 0.95),
    background    = hsl2rgb(200, 0.15, 0.99),

    red           = hsl2rgb(350, 0.66, 0.47),
    brown         = hsl2rgb(015, 0.15, 0.50),
    yellow        = hsl2rgb(045, 0.75, 0.40),
    lime          = hsl2rgb(066, 0.50, 0.55),
    green         = hsl2rgb(123, 0.46, 0.34),
    teal          = hsl2rgb(173, 1.00, 0.25),
    -- cyan          = hsl2rgb(187, 0.80, 0.40),
    cyan          = hsl2rgb(164, 0.62, 0.66),
    blue          = hsl2rgb(212, 0.80, 0.42),
    violet        = hsl2rgb(240, 0.50, 0.60),
    purple        = hsl2rgb(301, 0.63, 0.40),
}

-- stylua: ignore
local dark = {
    foreground    = hsl2rgb(211, 0.43, 0.75),
    inconspicuous = hsl2rgb(211, 0.20, 0.50),
    splitline     = hsl2rgb(211, 0.43, 0.30),
    selection     = hsl2rgb(211, 0.43, 0.25),
    stripline     = hsl2rgb(211, 0.43, 0.20),
    background    = hsl2rgb(211, 0.43, 0.15),

    red           = hsl2rgb(350, 0.65, 0.65),
    brown         = hsl2rgb(015, 0.15, 0.60),
    yellow        = hsl2rgb(044, 0.50, 0.60),
    lime          = hsl2rgb(066, 0.50, 0.55),
    green         = hsl2rgb(095, 0.38, 0.62),
    teal          = hsl2rgb(170, 0.75, 0.45),
    cyan          = hsl2rgb(187, 0.80, 0.65),
    blue          = hsl2rgb(205, 0.80, 0.65),
    violet        = hsl2rgb(250, 0.50, 0.65),
    purple        = hsl2rgb(286, 0.65, 0.65),
}

M.setup = function()
    M.colors = vim.o.background == "light" and light or dark
end

M.get = function()
    return M.colors
end

return M
