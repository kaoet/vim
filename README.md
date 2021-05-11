VIM
====

## Installation

### Prerequisites

* VIM
  * Linux: `sudo apt install vim`
  * macOS: `brew install vim`
* FZF
  * Linux: `sudo apt install fzf ripgrep`
  * macOS: `brew install fzf ripgrep`
  * Set environment variable `export FZF_DEFAULT_COMMAND='rg --files'`.
* Ranger
  * Linux: `sudo apt install ranger`
  * macOS: `brew install ranger`
* Node
  * macOS: `brew install node`

### Setup

```shell
git clone https://github.com/kaoet/vim.git ~/.config/vim
git clone https://github.com/k-takata/minpac.git \
    ~/.config/vim/pack/minpac/opt/minpac
ln -s ~/.config/vim/init.vim ~/.vimrc
ln -F -s ~/.config/vim ~/.vim
```

Then open `vim`, and type `:PackUpdate`. Check plugins with `:PackStatus`.

## Usage

See [Cheatsheet](cheatsheet.md).

## Plugins

Plugins are managed by [minpac](https://github.com/k-takata/minpac).

* Appearance
  * [x] [nord](https://github.com/arcticicestudio/nord-vim): color scheme
  * [x] [vim-airline](https://github.com/vim-airline/vim-airline): status/tabline
  * [x] [indentLine](https://github.com/Yggdroot/indentLine)
* File management
  * [x] [fzf](https://github.com/junegunn/fzf): fuzzy finder
  * [x] [Ranger.vim](https://github.com/francoiscabrol/ranger.vim): file explorer
* Editing
  * [x] [easymotion](https://github.com/easymotion/vim-easymotion)
  * [x] [surround](https://github.com/tpope/vim-surround)
* Auto completion
  * [x] [Ultisnips](https://github.com/SirVer/ultisnips): snippets
  * [x] [coc](https://github.com/neoclide/coc.nvim): code completion
    * [x] [coc-rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer)
    * [x] [coc-ultisnips](https://github.com/neoclide/coc-snippets)
* Languages
  * Rust
    * [x] [rust.vim](https://github.com/rust-lang/rust.vim)
    * [x] [vim-toml](https://github.com/cespare/vim-toml)
  * Markdown
    * [x] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
    * [x] [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
