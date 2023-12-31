# Leeward colorscheme for Neovim

Dark blue-ish theme inspired by a custom combination of several other colorschemes.

Orignally forked from an earlier version of [zanglg/nova.nvim](https://github.com/zanglg/nova.nvim) before it broke my
setup and was moved away from a bluer theme. WIP; will be using this as a basis to diverge from.

<img width="2209" alt="dark" src="https://user-images.githubusercontent.com/4172061/190657325-be88e26f-907a-434d-a5f1-af7634e335ed.png">

## Features

- [nvim-treesiter](https://github.com/nvim-treesitter/nvim-treesitter), _WIP_
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim), _WIP_
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [SmoothCursor.nvim](https://github.com/gen740/SmoothCursor.nvim)

## Installation

You can use your favorite plugin manager for this.

### lazy

```lua
return {
    "edmondburnett/leeward.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        theme = "dark",
    },
    config = function()
        require("leeward").setup()
        require("leeward").load()
    end
}
```

### packer

```lua
use({
    "edmondburnett/leeward.nvim",
    config = function()
        -- support both dark and light style
        vim.o.background = "dark"

        -- setup color palette
        require("leeward").setup()

        -- load colorscheme
        require("leeward").load()
    end,
})
```
