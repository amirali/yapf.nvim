# yapf.nvim
NeoVim Yapf formatter plugin

## Requirements
```bash
pip install yapf
```

## Installation
```lua
-- using packer
use {
	'amirali/yapf.nvim',
	config = function()
		require('yapf').setup {}
	end
}
```

## Configuration
```lua
...
	config = function
		require('yapf').setup {
			command = 'custom_yapf_command',
			style = 'your_preferred_style_or_path_to_config_file',
		}
	end
...
```

### Styles
You can choose whatever style or config file that yapf supports  
[Checkout here](https://github.com/google/yapf#formatting-style)

## Usage
### Using command
You can run `:Yapf` whenever you want to format the current buffer
### Automation
You can add the line below to your config file to run formatter on save
```lua
-- in lua
vim.command [[autocmd BufWritePre *.py :Yapf]]
```
```vim
" in vim
autocmd BufWritePre *.py :Yapf
```
### Keybind
```lua
-- in lua
vim.api.nvim_set_keymap('n', '<leader>y', ':Yapf<CR>', {})
```
```vim
" in vim
nmap <leader>y :Yapf<CR>
```
