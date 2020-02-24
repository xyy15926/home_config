"
"----------------------------------------------------------
" Name: locations.vim
" Author: xyy15926
" Created at:
" Updated at:
" Discription: settings about locations in vim
"----------------------------------------------------------

"set highlight search{{{
"
"highlight search cterm=none ctermbg=blue
autocmd cursorhold * set nohls
	"listen cursorhold event, rm hls
noremap n :set hls<cr>n
noremap N :set hls<cr>N
noremap / :set hls<cr>/
noremap ? :set hls<cr>?
noremap * :set hls<cr>*
noremap # :set hls<cr>#
	"set hls whenever search
"
"}}}


"locate cursor{{{
"
"highlight cursorline, cursorcolumn
"highlight clear [cursorline]
	"clear other highlight settings for cursorline, default
	"clear all highlight settings
	"or `highlight cursorline NONE`
set cursorline
"set cursorcolumn
	"disable cursorcolumn highlight since this may cause
	"Chinese character display inproperiate in some terminal
"
"diy cursorline's highlight style
highlight cursorline cterm=none ctermbg=23
	"cterm: character style in terminal vim, for example:
		"none, bold, underline, italic, separated by comma
	"ctermbg: background in terminal vim
	"ctermfg: frontground in terminal vim
	"gui: character style in gui vim
	"guibg:  background in gui vim
	"guifg: frontground in gui vim
	"the number show the color (sometimes)
"highlight! link cursorcolumn cursorline
	"link {from-group} {to-group} to share highlight setting
	"`!` must be added to take effect if there are already
	"highlight setting for {from-group}
"highlight Cursor ctermbg=241
	"this doesn't work
"
"}}}

