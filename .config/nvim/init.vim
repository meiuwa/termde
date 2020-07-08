call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' }
call plug#end()

function! s:update_git_status()
  let g:airline_section_b = "%{get(g:,'coc_git_status','')}"
endfunction

set hidden
noremap <A-1> :call CocAction('doHover')<CR>
inoremap <A-1> <Esc>:call CocAction('doHover')<CR>
noremap <A-2> <Plug>(coc-rename)
inoremap <A-2> <Esc><Plug>(coc-rename)
noremap <A-3> <Plug>(coc-definition)
inoremap <A-3> <Esc><Plug>(coc-definition)
noremap <A-4> <Plug>(coc-type-definition)
inoremap <A-4> <Esc><Plug>(coc-type-definition)
noremap <A-5> <Plug>(coc-references)
inoremap <A-5> <Esc><Plug>(coc-references)
noremap <A-6> <Plug>(coc-implementation)
inoremap <A-6> <Esc><Plug>(coc-implementation)
autocmd User CocGitStatusChange silent call s:update_git_status()
autocmd CursorHold,CursorHoldI * silent call CocActionAsync('highlight')
autocmd FileType json syntax match Comment +\/\/.\+$+

colorscheme material
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:material_theme_style = 'default' "| 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_terminal_italics = 0

let g:airline_theme = 'material'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail' "'default' | 'jsformatter' | 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'ERROR:'
"let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#warning_symbol = 'WARNING:'
"let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_section_b = "%{get(g:,'coc_git_status','')}"
let g:airline_section_z = '%3p%% %l:%c'

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
"let g:mkdp_browser = ''
noremap <C-p> :MarkdownPreview<CR>
inoremap <C-p> <C-o>:MarkdownPreview<CR>

set number
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set mouse=a
set whichwrap+=<,>,[,]
set updatetime=0
set virtualedit=onemore
inoremap <Esc> <C-o>:stopinsert<CR>
noremap <CR> i
noremap <C-A-q> :qa!<CR>
inoremap <C-A-q> <C-o>:qa!<CR>
noremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>
noremap <C-q> :q<CR>
inoremap <C-q> <C-o>:q<CR>
noremap <C-w> :wq<CR>
inoremap <C-w> <C-o>:wq<CR>
noremap y :r!termux-clipboard-set<CR>
noremap <C-c> "*y
noremap d :r!termux-clipboard-set<CR>d
noremap <C-x> "*d
noremap p :r!termux-clipboard-get<CR>
noremap <C-v> "*p
inoremap <C-v> <C-o>"*p
noremap <C-z> u
inoremap <C-z> <C-o>u
noremap <C-y> <C-R>
inoremap <C-y> <C-o><C-R>
noremap <C-a> ggVG<CR>
inoremap <C-a> <Esc>ggVG<CR>
noremap <Down> g<Down>
"inoremap <Down> <C-o>g<Down>
noremap <Up> g<Up>
"inoremap <Up> <C-o>g<Up>
noremap <C-Left> :tabprevious<CR>
inoremap <C-Left> <C-o>:tabprevious<CR>
noremap <C-Right> :tabnext<CR>
inoremap <C-Right> <C-o>:tabnext<CR>
noremap <S-Up> v<Up>
noremap <S-Down> v<Down>
noremap <S-Left> v<Left>
noremap <S-Right> v<Right>
inoremap <S-Up> <Esc>v<Up>
inoremap <S-Down> <Esc>v<Down>
inoremap <S-Left> <Esc>v<Left>
inoremap <S-Right> <Esc>v<Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>
vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>
