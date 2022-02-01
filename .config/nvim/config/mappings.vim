"------------------------------------------------------------------------
"        __  __                   _                 
"       |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___ 
"       | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
"       | |  | | (_| | |_) | |_) | | | | | (_| \__ \
"       |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"                   |_|   |_|            |___/     
"------------------------------------------------------------------------
"------------- Resize windows -------------------------------------------
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>

"------------- Easy CAPS ------------------------------------------------
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

"------------- Buffers Action -------------------------------------------
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <C-d> :bdelete<CR>

"------------- Save and Quit --------------------------------------------
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
"------------- Better tabbing -------------------------------------------
vnoremap < <gv
vnoremap > >gv
"------------- NvimTree -------------------------------------------------
nnoremap <silent> <C-n> :NvimTreeToggle <Cr>
"------------- Toggle search highlight
nnoremap <silent> <C-x> :if (&hlsearch == 1) \| set nohlsearch \| else \| set hlsearch \| endif<cr>

"------------- compe completion -----------------------------------------
inoremap <silent><expr> <CR> compe#confirm('<CR>')

