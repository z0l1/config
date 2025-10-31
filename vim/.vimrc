" in vimscript it is 'mapleader' this works in vscode also
" 'leader' also worked in vscode and in neovim but not in vi/vim
" this works in vi/vim :)
nnoremap <SPACE> <Nop>
let mapleader = " "

" Enable incremental search (highlight as you type)
set incsearch
 
" Start with global highlighting OFF
set nohlsearch

" smartcase is by default case-insensitive search unless you use casing in search
set smartcase
set relativenumber
 
" Map search keys to TURN ON highlighting when you start a search
" basic vi does not highlight all results during incremental search
nnoremap / :set hlsearch<CR>/
nnoremap ? :set hlsearch<CR>?

" Remap <leader>pv to execute :Ex (Explore)
nnoremap <leader>pv :Ex<CR>

" Move selected block
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
" vnoremap J :m dp
" vnoremap K :m dkP

" Join lines and keep cursor position
nnoremap J mzJ`z

" Control + U/D for page jumps (cursor stays centered)
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz


" cursor shape
" works with git bash inside windows 'Terminal'
if &term =~? 'rxvt' || &term =~? 'xterm' || &term =~? 'st-'
    " 1 or 0 -> blinking block
    " 2 -> solid block
    " 3 -> blinking underscore
    " 4 -> solid underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
    " Insert Mode
    let &t_SI .= "\<Esc>[6 q"
    " Normal Mode
    let &t_EI .= "\<Esc>[2 q"
endif
