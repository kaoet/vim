NVIM scripts
====

## Installation

### Prerequisites

* Neovim
  * Linux: `sudo apt install neovim`
  * macOS: `brew install neovim`
* Python plugin: `pip3 install --user pynvim`
* FZF
  * Linux: `sudo apt install fzf ripgrep`
  * macOS: `brew install fzf ripgrep`
  * Set environment variable `export FZF_DEFAULT_COMMAND='rg --files'`.
* Ranger
  * Linux: `sudo apt install ranger`
  * macOS: `brew install ranger`
* Node:
  * Linux: ??
  * macOS
    ```shell
    brew install node
    sudo npm install -g npm@latest
    sudo npm install -g neovim
    ```

### Setup

```shell
git clone https://github.com/kaoet/vim.git ~/.config/nvim
git clone https://github.com/k-takata/minpac.git \
    ~/.config/nvim/pack/minpac/opt/minpac
ln -s ~/.config/nvim/init.vim ~/.vimrc
ln -s ~/.config/nvim ~/.vim
```

Then open `nvim`, and type `:PackUpdate`. Check health with `:checkhealth`. Check plugins with `:PackStatus`.

## Usage

See [Cheatsheet](cheatsheet.md).

## Plugins

Plugins are managed by [minpac](https://github.com/k-takata/minpac).

* [x] FZF
* [x] base16-vim: color scheme
* [x] Ultisnips
* [x] coc
  * [x] coc-rls
  * [x] coc-ultisnips
* [x] easymotion
* [x] markdown-preview
* [x] vim-table-mode
* [x] surround
* Filetypes
  * [x] vim-toml
* [x] Airline
* [x] Ranger.vim
