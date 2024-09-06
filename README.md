# Treesitter highlights for E2 and its IR

## Installation

```lua
-- Lazy
{
    'mrdgo/e2.nvim',
    config = true,
    dependencies = { 'nvim-treesitter/nvim-treesitter' }
}
```

## Features

- Filetype detection
- Setup treesitter parser
- Treesitter highlights

for E2 and ir files.

Note: `*.ir` will only be interpreted as `e2ir`, if it resides in a subdirectory of the `e2compiler`. If you want to manually override this restriction, take a look at `:h filetype`. Examples:

`*.ir` as `e2ir` everywhere:
```lua
vim.filetype.add({
   extension = {
      ir = "e2ir"
   }
})
```

Add `directoryX` to the directories in which `*.ir` always is `e2ir`:
```lua
vim.filetype.add({
   pattern = {
      [".*/directoryX/.*.ir"] = "e2ir"
   }
})
```
