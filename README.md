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
