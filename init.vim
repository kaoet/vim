" vim:foldmethod=marker

" Include local configurations, which is not managed by Git.
runtime local.vim

" Basic {{{

set nocompatible

filetype plugin indent on

" Editing {{{
set backspace=indent,eol,start
" }}}

" UI {{{
syntax enable
set number
set relativenumber
set cursorline
set cursorcolumn
set hidden " Allow modified buffers to be hidden.
set noshowmode
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

" }}}

" Plugin manager {{{
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
" }}}

" Leader key bindings {{{
let g:mapleader = ' '
let g:leader_map = {}

let g:leader_map['?'] = ['Maps', 'show-keybindings']

" +buffer
let g:leader_map.b = {'name': '+buffer'}
call minpac#add('rbgrouleff/bclose.vim') " <leader>bd
let g:leader_map.b.d = 'close-buffer'

" +file
let g:leader_map.f = {'name': '+file'}
nnoremap <silent> <leader>fs :update<CR>
let g:leader_map.f.s = 'save-file'

" +quit
let g:leader_map.q = {'name': '+quit'}
nnoremap <silent> <leader>qq :quit<CR>
let g:leader_map.q.q = 'quit'
" }}}

" Local leader key bindings {{{
let g:maplocalleader = ','
" }}}

" Which key {{{
call minpac#add('liuchengxu/vim-which-key')

autocmd VimEnter * call which_key#register('<Space>', "g:leader_map")
nnoremap <silent> <leader>      :<C-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<C-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<C-u>WhichKeyVisual ','<CR>
" }}}

" FZF command-line fuzzy finder {{{
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
nnoremap <silent> <C-p> :Files<CR>
let g:leader_map.b.b = ['Buffers', 'fzf-buffers']
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" }}}

" Ranger {{{
call minpac#add('francoiscabrol/ranger.vim')
let g:ranger_map_keys = 0
" }}}

" Theme {{{
call minpac#add('arcticicestudio/nord-vim')
if !empty(glob('~/.config/vim/pack/minpac/start/nord-vim'))
  colorscheme nord
endif
" }}}

" Airline {{{
call minpac#add('vim-airline/vim-airline')
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>b1 <Plug>AirlineSelectTab1
nmap <leader>b2 <Plug>AirlineSelectTab2
nmap <leader>b3 <Plug>AirlineSelectTab3
nmap <leader>b4 <Plug>AirlineSelectTab4
nmap <leader>b5 <Plug>AirlineSelectTab5
nmap <leader>b6 <Plug>AirlineSelectTab6
nmap <leader>b7 <Plug>AirlineSelectTab7
nmap <leader>b8 <Plug>AirlineSelectTab8
nmap <leader>b9 <Plug>AirlineSelectTab9
nmap <leader>h <Plug>AirlineSelectPrevTab
nmap <leader>l <Plug>AirlineSelectNextTab

for s:i in range(1, 9)
  let g:leader_map.b[s:i] = 'tab-'.s:i
endfor
unlet s:i
" }}}

" Code Completion {{{
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-ultisnips']
" }}}

" Easy Motion {{{
call minpac#add('easymotion/vim-easymotion')
map <leader>m <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1  " Case incensitive

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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" }}}

" Markdown {{{
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()'})
call minpac#add('dhruvasagar/vim-table-mode')
" }}}

" Indent line {{{
call minpac#add('Yggdroot/indentLine')
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
