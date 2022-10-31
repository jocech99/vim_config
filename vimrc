set nocompatible
filetype off
set belloff=all
let $VIM='~.vim'

" Plugin installation {{{1
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'reedes/vim-pencil'
Plugin 'junegunn/goyo.vim'
Bundle 'altercation/vim-colors-solarized'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Leader mappings {{{1
let mapleader = "," 
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"  " Toggle highlighting search result with <Space>-h
map <leader>t :NERDTreeToggle<CR>                                                    " Toggle Nerdtree with <Space>-t
map <leader>n :set nonumber!<CR>                                                     " Toggle line numbers
map <leader>g :Goyo<CR>

" Plugin config {{{1

" Pencil breaks markdown...
"augroup pencil
  "autocmd!
  "autocmd FileType markdown,mkd call pencil#init()
"augroup END

" Markdown config
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 1

" Goyo config
let g:goyo_width = 120

" Vimwiki config
let g:vimwiki_global_ext = 0
let g:vimwiki_list=[
          \{
            \'path':'~/wiki/notes-perso/',
            \'html_path':'~/jocew/wiki/notes-perso/html',
            \'name':'notes-perso',
            \'syntax':'markdown',
            \'ext':'md',
            \'auto_export':0,
            \'auto_tags':1,
            \'auto_toc':1,
            \'auto_diary_index':1,
            \'links_space_char':'_',
            \'custom_wiki2html': 'vimwiki_markdown',
            \ 'html_filename_parameterization': 1,
            \'css_file': '~/wiki/notes-perso/templates/default.css',
            \'template_path':'~/wiki/notes-perso/templates',
          \},
          \{
            \ 'path':'~/wiki/work/',
            \'html_path':'~/wiki/work/html',
            \'name':'work',
            \'syntax':'markdown',
            \'ext':'wiki',
            \'auto_export':1,
            \'auto_tags':1,
            \'auto_diary_index':1,
            \'css_file': '~/wiki/work/templates/default.css',
            \'template_path':'~/wiki/work/templates',
          \}
        \]

function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction

nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>
nmap <Leader>wx :call VimwikiFindIncompleteTasks()<CR>

" Move between windows with a single command {{{1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" General settings {{{1
set shellslash
set t_Co=256
set ts=2
set hlsearch
set shiftwidth=2
set expandtab
set autoindent
set autowrite
set autoread
set ignorecase smartcase
set cindent shiftwidth=2
set ruler
set laststatus=2
set wildmenu
set nobackup
set nowritebackup
set noswapfile
set nobackup
set nowritebackup
set noswapfile
set laststatus=2
set wildmenu
set nobackup
set nowritebackup
set noswapfile
set nobackup
set nowritebackup
set noswapfile
syntax on
