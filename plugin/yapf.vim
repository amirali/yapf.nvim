if exists('g:yapf_loaded')
	finish
endif

if !has('nvim')
	echo 'This plugin requires NeoVim'
	finish
endif

let g:yapf_loaded = 1

command! Yapf lua require("yapf").format()
