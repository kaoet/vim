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
if has("termguicolors")
  " fix bug for vim
  " set t_8f=^[[38;2;%lu;%lu;%lum
  " set t_8b=^[[48;2;%lu;%lu;%lum
  let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
  let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

  " enable true color
  set termguicolors
endif
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

" +code
let g:leader_map.c = {'name': '+code'}

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
let g:localleader_map = {}
" }}}

" Which key {{{
call minpac#add('liuchengxu/vim-which-key')
set timeoutlen=500

if !empty(glob('~/.vim/pack/minpac/start/vim-which-key'))
  autocmd VimEnter * call which_key#register('<Space>', "g:leader_map")
  autocmd VimEnter * call which_key#register(',', "g:localleader_map")
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

" NERD Commenter {{{
call minpac#add('preservim/nerdcommenter')
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:leader_map.c.c = ['<Plug>NERDCommenterToggle', 'toggle-comment']
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
let g:leader_map.h = ['<Plug>AirlineSelectPrevTab', 'prev-tab']
let g:leader_map.l = ['<Plug>AirlineSelectNextTab', 'next-tab']

for s:i in range(1, 9)
  let g:leader_map[s:i] = ['<Plug>AirlineSelectTab'.s:i, 'tab-'.s:i]
endfor
unlet s:i
" }}}

" Code Completion {{{
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-ultisnips', 'coc-go', 'coc-explorer']
let g:leader_map.f.t = [':CocCommand explorer', 'coc-explorer']
" }}}

" Easy Motion {{{
call minpac#add('easymotion/vim-easymotion')
let g:EasyMotion_smartcase = 1  " Case incensitive
" }}}

" Choosewin {{{
call minpac#add('t9md/vim-choosewin')
let g:choosewin_overlay_enable = 1
let g:leader_map.w.w = ['<Plug>(choosewin)', 'choose-window']
" }}}

" UltiSnips {{{
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" }}}

" Markdown {{{
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()', 'type': 'opt'})
call minpac#add('dhruvasagar/vim-table-mode')
let g:table_mode_map_prefix = '<localleader>t'
let g:localleader_map.t = {
      \'name': '+table-mode',
      \'m': 'toggle-table-mode',
      \'t': 'tableize',
      \}
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
call minpac#add('tpope/vim-fugitive')
let g:leader_map.g = {
      \'name': '+git',
      \'g': ['Gstatus', 'git-status'],
      \}
" }}}

" YAML {{{
" Resolve slow core YAML syntax problem.
call minpac#add('stephpy/vim-yaml', {'type': 'opt'})
let g:yaml_limit_spell = 1
" }}}

" Rust {{{
call minpac#add('rust-lang/rust.vim', {'type': 'opt'})
call minpac#add('cespare/vim-toml', {'type': 'opt'})
let g:rustfmt_autosave = 1
" }}}

" Go {{{
call minpac#add('fatih/vim-go', {'type': 'opt'})
" TODO call :GoInstallBinaries
" }}}
