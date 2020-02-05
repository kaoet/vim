" vim:foldmethod=marker

" Include local configurations, which is not managed by Git.
runtime local.vim

" Basic {{{

" UI {{{
set number
set relativenumber
set cursorline
set cursorcolumn
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
nnoremap <C-p> :<C-u>FZF<CR>
" }}}

" Theme {{{
call minpac#add('chriskempson/base16-vim')
if !empty(glob('~/.config/nvim/pack/minpac/start/base16-vim'))
    colorscheme base16-oceanicnext
endif
" }}}

" Code Completion {{{
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
let g:coc_global_extensions = ['coc-rls', 'coc-ultisnips']
" }}}

" Easy Motion {{{
call minpac#add('easymotion/vim-easymotion')
let g:EasyMotion_smartcase = 1  " Case incensitive

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

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
call minpac#add('iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } })
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

" Filetypes {{{
call minpac#add('cespare/vim-toml')
" }}}
