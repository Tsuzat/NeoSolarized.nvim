# 🖌 NeoSolarized

A dark and light Neovim theme written in Lua ported from 
[NeoSolarized](https://github.com/overcache/NeoSolarized) with better syntax highlighting. Includes
extra themes for Kitty, Alacritty and Konsole.

## Dark (Dark Theme with Transparency)
![Screenshot_3](https://user-images.githubusercontent.com/70003855/197702159-2ca089e9-38d3-47dd-8069-58271e738a3d.png)

## Dark
![Screenshot_1](https://user-images.githubusercontent.com/70003855/197702118-4433e6ff-63d8-491a-a65a-1b43758d8504.png)


## Light
![Screenshot_2](https://user-images.githubusercontent.com/70003855/197702095-2c81f5f4-c0c2-48dd-8777-e832a8c7e845.png)



## 🔥 Features

- supports the latest Neovim 5.0 features like TreeSitter and LSP
- better syntax highlighting
- color configs for
  [Kitty](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include),
  [Alacritty](https://github.com/alacritty/alacritty) and
  [Konsole](https://konsole.kde.org/)
- **lualine** theme

### 🧨 Plugin Support

- [Barbar](https://github.com/romgrk/barbar.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [vim-sneak](https://github.com/justinmk/vim-sneak)

## ⚡️ Requirements

- Neovim >= 0.6.0

## 💡 Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use ('Tsuzat/NeoSolarized.nvim')
```
**or** clone the project and install locally using packer.

First clone the project in you machine.
```sh
$ git clone https://github.com/Tsuzat/NeoSolarized.nvim
```
Install using packer
```lua
use ('path-to-NeoSolarized')
```

## ✨ Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme NeoSolarized
```

```lua
-- Lua
vim.cmd[[colorscheme NeoSolarized]]
```

To use the `NeoSolarized` theme for `Lualine`, simply specify it in your
lualine settings:

```lua
require('lualine').setup {
  options = {
    theme = 'NeoSolarized'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

> ⚠️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme NeoSolarized`

The theme comes in two styles, `light` and `dark`.

NeoSolarized will use the default options, unless you call `setup`.
Here an example to set things up using default options.

```lua
local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
  return
end

-- Default Setting for NeoSolarized

NeoSolarized.setup {
  style = "dark", -- "dark" or "light"
  transparent = true, -- true/false
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style for different style groups
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true, -- true/false; for global underline
    undercurl = true, -- true/false; for global undercurl
  },
}
-- Set colorscheme to NeoSolarized
vim.cmd [[
   try
        colorscheme NeoSolarized
    catch /^Vim\%((\a\+)\)\=:E18o
        colorscheme default
        set background=dark
    endtry
]]
```
> **NOTE** that you can not use transparency with `light` mode.

## ❣️ Extras

Extra color configs for **Kitty**, **Alacritty** and **Konsole**
can be found in [extras](extras/). To use them, refer to
their respective documentation.

## 💥 Contributing

Pull requests are welcome. One can add plugin and language specific highlight groups.

## 🌟 Future Updates

Nothing is perfect. Every project needs improvements. I'll be improving this plugin. Future updates could have following improvements,

  - Language Specific Settings
  - Terminal Color Support
  - Optimization of highlight groups

## 🏅 Inspiration

  - Plugin Structure is heavily inspired from [Tokyonight](https://github.com/folke/tokyonight.nvim)
  - Classic color palettes from [NeoSolarized](https://github.com/overcache/NeoSolarized)
  - Love for Full Transparent NeoVim themes.
