"
"----------------------------------------------------------
"   Name: python.vim
"   Author: xyy15926
"   Created at: 2018-11-29 22:05:31
"   Updated at: 2021-04-27 15:31:23
"   Description: 
"----------------------------------------------------------

set expandtab
autocmd BufWrite *.py call SetMakeParam()

function! SetMakeParam()
	let b:filename = expand("%:t")
	execute "set makeprg=flake8\\ ".b:filename."\\ &\\ python3\\ ".b:filename
endfunction

nnoremap <F5> :call RunPy()<CR>
function! RunPy()
	exec "w"
	if &filetype == "python"
		exec "!python %"
	endif
endfunction

