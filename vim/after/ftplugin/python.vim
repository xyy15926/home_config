"
"----------------------------------------------------------
"   Name: python.vim
"   Author: xyy15926
"   Created at: 2018-11-29 22:05:31
"   Updated at: 2019-06-30 20:40:49
"   Description: 
"----------------------------------------------------------

autocmd BufWrite *.py call SetMakeParam()

function! SetMakeParam()
	let b:filename = expand("%:t")
	execute "set makeprg=flake8\\ ".b:filename."\\ &\\ python3\\ ".b:filename
endfunction

vnoremap <localleader>r :<c-u>'<,'>w !xargs -0 tmux set-buffer<cr><cr><C-b>:selectp -t
" nnoremap <localleader>r :<c-u>'<,'>w !xargs -0 tmux set-buffer<cr>
