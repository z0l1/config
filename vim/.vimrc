let leader = " "

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
