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

let g:leader_map['<Tab>'] = ['<C-^>', 'previous-buffer']

" +buffer
let g:leader_map.b = {'name': '+buffer'}
call minpac#add('rbgrouleff/bclose.vim') " <leader>bd
let g:leader_map.b.d = 'delete-buffer'

" +file
let g:leader_map.f = {'name': '+file'}
nnoremap <silent> <leader>fs :<C-u>update<CR>
let g:leader_map.f.s = 'save-file'

" +window
let g:leader_map.w = {'name': '+window'}
nnoremap <silent> <leader>wd :<C-u>close<CR>
let g:leader_map.w.d = 'delete-window'

" +quit
let g:leader_map.q = {'name': '+quit'}
nnoremap <silent> <leader>qq :<C-u>quitall<CR>
let g:leader_map.q.q = 'quit-all'
" }}}

" Local leader key bindings {{{
let g:maplocalleader = ','
" }}}

" Which key {{{
call minpac#add('liuchengxu/vim-which-key')
set timeoutlen=500

if !empty(glob('~/.vim/pack/minpac/start/vim-which-key'))
  autocmd VimEnter * call which_key#register('<Space>', "g:leader_map")
endif
nnoremap <silent> <leader>      :<C-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<C-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<C-u>WhichKeyVisual ','<CR>
" }}}

" FZF command-line fuzzy finder {{{
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
let g:leader_map.f.f = ['Files', 'fzf-files']
let g:leader_map.b.b = ['Buffers', 'fzf-buffers']
nmap <leader>? <Plug>(fzf-maps-n)
xmap <leader>? <Plug>(fzf-maps-x)
omap <leader>? <Plug>(fzf-maps-o)
let g:leader_map['?'] = 'show-keybindings'
" }}}

" Ranger {{{
call minpac#add('francoiscabrol/ranger.vim')
let g:ranger_map_keys = 0
let g:leader_map.f.r = ['Ranger', 'ranger']
" }}}

" NERDTree {{{
call minpac#add('preservim/nerdtree')
let g:leader_map.f.t = ['NERDTreeToggle', 'toggle-NERDTree']
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
      \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" }}}

" Theme {{{
call minpac#add('arcticicestudio/nord-vim')
if !empty(glob('~/.vim/pack/minpac/start/nord-vim'))
  colorscheme nord
endif
" }}}

" Airline {{{
call minpac#add('vim-airline/vim-airline')
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
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

for s:i in range(1, 9)
  let g:leader_map[s:i] = 'tab-'.s:i
endfor
unlet s:i
" }}}

" Code Completion {{{
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-ultisnips', 'coc-go']
" }}}

" Easy Motion {{{
call minpac#add('easymotion/vim-easymotion')
let g:EasyMotion_smartcase = 1  " Case incensitive
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

" Git {{{
call minpac#add('jreybert/vimagit')
let g:leader_map.g = {
      \'name': '+git',
      \'g': ['Magit', 'magit'],
      \}
" }}}

" YAML {{{
" Resolve slow core YAML syntax problem.
call minpac#add('stephpy/vim-yaml')
let g:yaml_limit_spell = 1
" }}}

" Rust {{{
call minpac#add('rust-lang/rust.vim')
call minpac#add('cespare/vim-toml')
let g:rustfmt_autosave = 1
" }}}

" Go {{{
call minpac#add('fatih/vim-go')
" TODO call :GoInstallBinaries
" }}}
