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

## Plugins

Plugins are managed by [minpac](https://github.com/k-takata/minpac).

* [x] FZF
* [x] base16-vim: color scheme
* [x] Ultisnips
* [x] coc
* [x] easymotion
* [x] markdown-preview
* [x] surround
