" vim:foldmethod=marker

" Include local configurations, which is not managed by Git.
runtime local.vim

" Basic {{{

" UI {{{
set number
set relativenumber
set cursorline
set cursorcolumn
set hidden " Allow modified buffers to be hidden.
" }}}

" Whitespace {{{
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list listchars=tab:▸\ ,trail:␣,precedes:«,extends:»
" }}}

" Terminal {{{
set lazyredraw
set mouse=a
set termguicolors
" }}}

" Folding {{{
set foldmethod=syntax
set foldlevelstart=99  " Open file with no folding
" }}}

" Searching {{{
set ignorecase
set smartcase
" }}}}

let mapleader = ','
" }}}

" Plugin manager {{{
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
" }}}

" FZF command-line fuzzy finder {{{
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-e> :Buffers<CR>
" }}}

" Ranger {{{
call minpac#add('francoiscabrol/ranger.vim')
call minpac#add('rbgrouleff/bclose.vim')
" }}}

" Theme {{{
call minpac#add('chriskempson/base16-vim')
if !empty(glob('~/.config/nvim/pack/minpac/start/base16-vim'))
    colorscheme base16-oceanicnext
endif
" }}}

" Startify {{{
call minpac#add('mhinz/vim-startify')
" }}}

" Airline {{{
call minpac#add('vim-airline/vim-airline')
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>h <Plug>AirlineSelectPrevTab
nmap <leader>l <Plug>AirlineSelectNextTab
" }}}

" Code Completion {{{
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
let g:coc_global_extensions = ['coc-rls', 'coc-ultisnips']
" }}}

" Easy Motion {{{
call minpac#add('easymotion/vim-easymotion')
let g:EasyMotion_smartcase = 1  " Case incensitive

" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" }}}

" UltiSnips {{{
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
" }}}

" Markdown {{{
call minpac#add('iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' })
call minpac#add('dhruvasagar/vim-table-mode')
" }}}

" Indent line {{{
call minpac#add('Yggdroot/indentLine')
let g:indentLine_setConceal = 0
" }}}

" Surround {{{
call minpac#add('tpope/vim-surround')
" }}}

" Repeat for plugin {{{
call minpac#add('tpope/vim-repeat')
" }}}

" Rust {{{
call minpac#add('rust-lang/rust.vim')
call minpac#add('cespare/vim-toml')
let g:rustfmt_autosave = 1
" }}}
