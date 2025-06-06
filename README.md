<div align="center">
    <div class="b-header">
        <a class="active" href="https://github.com/loctvl842/monokai-pro.nvim">
            <img width="484" alt="img_v3_0274_94b96554-6c31-431b-a95e-2de719b493hu" src="https://github.com/loctvl842/monokai-pro.nvim/assets/80513079/24a697cf-0bae-4bde-a059-909ca665c333">
            <h1>Monokai Pro</h1>
            <h2>Beautiful functionality for professional developers</h2>
        </a>
    </div>
</div>

Find out more here [monokai.pro](https://monokai.pro/)

![monokai-pro-macbook](https://user-images.githubusercontent.com/80513079/218453999-87c957f1-658d-49a6-bf67-291d3e46fa9a.png)

## ⭐ Pro

![pro](https://user-images.githubusercontent.com/80513079/209659184-ed5a28c3-cb7f-4de7-8f7c-5d206dc11540.png)

## 🛑 Octagon

![octagon](https://user-images.githubusercontent.com/80513079/209659175-97db9a95-edd0-4b6e-8087-7fb1aee45c52.png)

## 🤖 Machine

![machine](https://user-images.githubusercontent.com/80513079/209659194-d9fe09f5-ea35-4130-b2e8-d854b7b6fb72.png)

## ☕ Ristretto

![ristretto](https://user-images.githubusercontent.com/80513079/209659205-90200c24-d302-4b70-811a-36e6e7845f6b.png)

## 🌈 Spectrum

![spectrum](https://user-images.githubusercontent.com/80513079/209659126-9df0d401-020f-4b0c-963d-5a930d0a6974.png)

## 👴 Classic

![classic](https://user-images.githubusercontent.com/80513079/209659153-9362a05f-2b7f-4b36-acf1-d13bef6a9118.png)

### 🔌 Plugin support

- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [bufferLine.nvim](https://github.com/akinsho/bufferline.nvim)
- [Cmp](https://github.com/hrsh7th/nvim-cmp)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [renamer.nvim](https://github.com/filipdutescu/renamer.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [breadcrumb.nvim](https://github.com/loctvl842/breadcrumb.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)
- [rainbow-delimeters.nvim](https://gitlab.com/HiPhish/rainbow-delimiters.nvim)

## Palette

```lua
cs.base = {
  dark = p.dark2,        -- "#19181a"
  black = p.dark1,       -- "#221f22"
  red = p.accent1,       -- "#ff6188"
  green = p.accent4,     -- "#a9dc76"
  yellow = p.accent3,    -- "#ffd866"
  blue = p.accent2,      -- "#fc9867"
  magenta = p.accent6,   -- "#ab9df2"
  cyan = p.accent5,      -- "#78dce8"
  white = p.text,        -- "#fcfcfa"
  dimmed1 = p.dimmed1,   -- "#c1c0c0"
  dimmed2 = p.dimmed2,   -- "#939293"
  dimmed3 = p.dimmed3,   -- "#727072"
  dimmed4 = p.dimmed4,   -- "#5b595c"
  dimmed5 = p.dimmed5,   -- "#403e41"
}
```

- **Primary Colors:** `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white` are your vibrant accent colors.
- **Dimmed Colors:** `dimmed1` to `dimmed5` are muted shades for less prominent elements.
- **Background Colors:** `dark` and `black` serve as your primary and secondary background colors.


## 📦 Installation

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'loctvl842/monokai-pro.nvim'
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup()
  end
}
```

## 🔨 Configuration

There are several themes included in this plugin.

- [Pro](#-pro) – Monokai Pro _(default)_
- [Octagon](#-octagon) – Monokai Pro (Filter Octagon)
- [Machine](#-machine) – Monokai Pro (Filter Machine)
- [Ristretto](#-ristretto) – Monokai Pro (Filter Ristretto)
- [Spectrum](#-spectrum) – Monokai Pro (Filter Spectrum)
- [Classic](#-classic) – Monokai Classic

Example configuration:

```lua
require("monokai-pro").setup({
  transparent_background = false,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = { italic = true },
    keyword = { italic = true }, -- any other keyword
    type = { italic = true }, -- (preferred) int, long, char, etc
    storageclass = { italic = true }, -- static, register, volatile, etc
    structure = { italic = true }, -- struct, union, enum, etc
    parameter = { italic = true }, -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    -- "which-key",
    "renamer",
    "notify",
    -- "nvim-tree",
    -- "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
  ---@param cs Colorscheme
  ---@param p ColorschemeOptions
  ---@param Config MonokaiProOptions
  ---@param hp Helper
  override = function(cs: Colorscheme, p: ColorschemeOptions, Config: MonokaiProOptions, hp: Helper) end,
})
```

- Check my [nvim](https://github.com/loctvl842/nvim) to see my plugins setup for `border` if you want to set `background_clear`

For example:

<details>
  <summary>float_win</summary>

```lua
require("monokai-pro").setup({
    -- ... your config
    background_clear = { "float_win" }
    -- ... your config
})

require("cmp").setup({
    -- ... your config
    window = {
      border = "rounded",
    }
    completion = {
        border = "rounded",
    }
    -- ... your config
})
```

- With the above config:
  ![bg_clear_cmp](https://user-images.githubusercontent.com/80513079/218801625-a2b43cb0-175c-4463-9290-a361deb41f6a.png)

- With the default config:
  ![default_cmp](https://user-images.githubusercontent.com/80513079/218804686-834c624d-d9bf-45a1-a1bd-a6d05e70e1b8.png)

</details>

<details>
  <summary>Telescope</summary>

```lua
require("monokai-pro").setup({
    -- ... your config
    background_clear = {}
    -- ... your config
})

require("telescope").setup({
    -- ... your config
    defaults = {
      borderchars = { "█", " ", "▀", "█", "█", " ", " ", "▀" },
    }
    -- ... your config
})
```

- With the above config:

![removed_border_telescope](https://user-images.githubusercontent.com/80513079/218804055-a5cbf9d4-5c0f-4c0f-9cfe-5362af3714e8.png)

- With the default config:
  ![default_telescope](https://user-images.githubusercontent.com/80513079/218803566-56852087-8d3c-410c-854a-89bb49f8d981.png)

</details>

## 📚 Usage

- Enable this colorscheme by using the following command after `setup`:

```vim
" Vim Script
colorscheme monokai-pro
```

```lua
require("monokai-pro").setup({
  -- ... your config
})
-- lua
vim.cmd([[colorscheme monokai-pro]])
```

- To enable `monokai-pro` for `Lualine`:

```lua
require('lualine').setup {
  options = {
    -- ...
    theme = 'monokai-pro'
    -- ...
  }
}
```

- To enable `monokai-pro` for `barbecue`:

```lua
require('barbecue').setup {
  -- ...
  theme = 'monokai-pro'
  -- ...
}

```

- To enable `monokai-pro` for `lightline`:

```vim
" Vim Script
let g:lightline = {'colorscheme': 'monokaipro'}
```

- Override function for customizing the final color scheme:

```lua
require("monokai-pro").setup({
    -- ...
    override = function()
      return {
          Normal = { bg = "#000000" }
        }
    end
    -- ...
  })
```

- Customize your own palette:

This is a sample config to use `Tokyonight` as the palette:

```lua
require("monokai-pro").setup({
    -- ...
    --- @param filter "classic" | "machine" | "octagon" | "pro" | "ristretto" | "spectrum"
    override = function(c)
      return {
        IndentBlanklineChar = { fg = c.base.dimmed4 },
      }
    end,
    overridePalette = function(filter)
      return {
        dark2 = "#101014",
        dark1 = "#16161E",
        background = "#1A1B26",
        text = "#C0CAF5",
        accent1 = "#f7768e",
        accent2 = "#7aa2f7",
        accent3 = "#e0af68",
        accent4 = "#9ece6a",
        accent5 = "#0DB9D7",
        accent6 = "#9d7cd8",
        dimmed1 = "#737aa2",
        dimmed2 = "#787c99",
        dimmed3 = "#363b54",
        dimmed4 = "#363b54",
        dimmed5 = "#16161e",
      }
    end
    -- ...
  })
```

- Customize the scheme:

This is a sample config to use a darker background for almost all supported plugins:

```lua
require("monokai-pro").setup({
    -- ...
    overrideScheme = function(cs, p, config, hp)
      local cs_override = {}
      local calc_bg = hp.blend(p.background, 0.75, '#000000')

      cs_override.editor = {
        background = calc_bg,
      }
      return cs_override
    end
    -- ...
  })
```

## 🔧 Command

- run command `MonokaiProSelect` to launch a menu to choose theme filter (required: [nui.nvim](https://github.com/MunifTanjim/nui.nvim))
- or we can run command `MonokaiPro` with parameter to change theme filter: For example:
  > `MonokaiPro classic`
