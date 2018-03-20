" ****************************************
" PLUGINS
" ****************************************
call plug#begin('~/.config/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
Plug 'hdima/python-syntax'
Plug 'digitaltoad/vim-jade'
Plug 'shmargum/vim-sass-colors'
Plug 'pangloss/vim-javascript'
"Plug 'neomake/neomake'
"Plug 'pangloss/vim-javascript'
"Plug 'othree/yajs.vim'
"Plug 'valloric/youcompleteme'
"Plug 'vim-scripts/haskell.vim'
call plug#end()



" ****************************************
" GENERAL SETTINGS
" ****************************************

" Share clipboard with system one
set clipboard=unnamedplus

" Split below and to the right
set splitbelow
set splitright

" Always show tab bar
set showtabline=2

" Wrap left and right
set whichwrap+=<,>,h,l,[,]

" Use spaces instead of tabs
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Enable mouse selection
set mouse=a

" Enable show line number
set number

" Set Colorscheme
colorscheme Tomorrow-Night

" Marker for max line length
set colorcolumn=80

" ****************************************
" KEYBINDINGS 
" ****************************************

" [TERMINAL] ESC to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

" [COMMAND+INSERT+VISUAL] CTRL-S Save file
nnoremap <C-s> :w!<CR>
inoremap <C-s> <esc>:w!<CR>gi
vnoremap <C-s> <esc>:w!<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-LEFT switch to left or next window
nnoremap <M-Right> :wincmd l<CR>
inoremap <M-Right> <ESC>:wincmd l<CR>gi
vnoremap <M-Right> <ESC>:wincmd l<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-RIGHT switch to right previous window
nnoremap <M-Left> :wincmd h<CR> 
inoremap <M-Left> <ESC>:wincmd h<CR>gi
vnoremap <M-Left> <ESC>:wincmd h<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-UP switch to window above current
nnoremap <M-Up> :wincmd k<CR>
inoremap <M-Up> <ESC>:wincmd k<CR>gi
vnoremap <M-Up> <ESC>:wincmd k<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-DOWN switch to window below current
nnoremap <M-Down> :wincmd j<CR>
inoremap <M-Down> <ESC>:wincmd j<CR>gi
vnoremap <M-Down> <ESC>:wincmd j<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-DOWN Scroll down fast
    nnoremap <silent> <S-Down> :call comfortable_motion#flick(200)<CR>
inoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gi
vnoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gv=gv

" [EDIT+VISUAL+COMMAND] SHIFT-UP Scroll up fast
nnoremap <silent> <S-Up> :call comfortable_motion#flick(-200)<CR>
inoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi
vnoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi

" [COMMAND] TAB go to next tab
nnoremap <TAB> gt

" [COMMAND] SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" ****************************************
" FUNCTIONS
" ****************************************
function! DefaultWorkspace()
    NERDTree
    tabnew
    NERDTreeMirror
    tabprevious
endfunction

command! -register DefaultWorkspace call DefaultWorkspace()

" ****************************************
" PLUGIN SETTINGS
" ****************************************

" yuttie/comfortable-motion.vim
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_air_drag = 4.0
let g:comfortable_motion_friction = 0.0

" vim-airline/vim-airline
"let g:airline_powerline_fonts = 1

" vim-airline/vim-airline-thems
let g:airline_theme='bubblegum'

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
