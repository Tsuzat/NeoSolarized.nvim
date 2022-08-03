## Introduction
NeoSolarized.nvim is based on [NeoSolarized](https://github.com/overcache/NeoSolarized). The theme is optimised for fully transparency with support of LSP, CMP, GITSIGN and many more plugins.

## Installation
Install this theme using plugin managers
#### Plug
```
Plug 'Tsuzat/NeoSolarized.nvim'
```
#### Packer
```
use ("Tsuzat/NeoSolarized.nvim")
```
Install this theme using Packer locally. First Clone this repo
```sh
$ git clone https://github.com/Tsuzat/NeoSolarized.nvim
```
Add the path of cloned repo in packer
```
use ("path-to-NeoSolarized.nvim")
```
## Features
- Carefully designed color palette for eye protection.
- Support of full transparency for awesome experience
- Highly customizable.
- Rich support for common file types and plugins.
- Tree-sitter support.
- Semantic highlighting support.
- Italic support

## Preview
Default Dark theme
![default_dark](https://user-images.githubusercontent.com/70003855/182680011-ca4de840-cb99-471c-82d1-f7e1061faeef.png)
Default Light theme
![defaukt light](https://user-images.githubusercontent.com/70003855/182680058-4e9780e6-6dcd-4325-9deb-ee71535c67f3.png)
Recommended transparent dark theme
![dark](https://user-images.githubusercontent.com/70003855/182680104-e7a17e8d-ae4a-4190-9114-b38ed127bf48.png)

## Options
Following options are recommended (refer to 3rd preview picture)
```lua
vim.g.NeoSolarized_italics = 1 -- 0 or 1
vim.g.NeoSolarized_visibility = 'normal' -- low, normal, high
vim.g.NeoSolarized_diffmode = 'normal' -- low, normal, high
vim.g.NeoSolarized_termtrans = 1 -- 0(default) or 1 -> Transparency
vim.g.NeoSolarized_lineNr = 0 -- 0 or 1 (default) -> To Show backgroung in LineNr

vim.cmd [[
    try
        colorscheme NeoSolarized
    catch /^Vim\%((\a\+)\)\=:E18/
        colorscheme default
        set background=dark
    endtry
        highlight FloatBorder guibg=NONE ctermbg=NONE  " Removes the border of float menu (LSP and Autocompletion uses it)
        highlight link NormalFloat Normal 
        highlight NormalFloat ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE 
        highlight Pmenu ctermbg=NONE guibg=NONE 
]]
```
## Credits and Inspiration
- [NeoSolarized](https://github.com/overcache/NeoSolarized)
- [nvim-solarized-lua](https://github.com/ishan9299/nvim-solarized-lua)
