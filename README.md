### Requires (Linux & ChromeOS)
1. [Homebrew](https://brew.sh) Install
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. [Wezterm](https://github.com/wez/wezterm) Install
```bash
brew tap wez/wezterm-linuxbrew
brew install wezterm
```
3. [Git](https://git-scm.com/) Install
```bash
apt install git
```
4. [tmux](https://github.com/tmux/tmux) Install
```bash
apt install tmux
```
5. [Bat](https://github.com/sharkdp/bat) Install
```bash
sudo apt install bat
```
Important: If you install bat this way, please note that the executable may be installed as batcat instead of bat (due to a name clash with another package). You can set up a bat -> batcat symlink or alias to prevent any issues that may come up because of this and to be consistent with other distributions:
```bash
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```
6. [btop](https://github.com/aristocratos/btop) Install
```bash
brew install btop
```

### Shell setup (Linux & ChromeOS)
1. [Fish Shell](https://fishshell.com/) Install
```bash
brew install fish
```
Switch to fish as your deault shell.
See its configuration and set the program to start to `/usr/local/bin/fish` (if that's where fish is installed)
THe more involved and complete way is to set fish as your login shell. To do that, you need to:
* Add the shell to `/etc/shells` with:
```bash
echo /usr/local/bin/fish | sudo tee -a /etc/shells
```
* Change your default shell with:
```bash
chsh -s /usr/local/bin/fish
```
* Or modify the `/etc/passwd` file,change the user bash.
* Maybe you must use the `fish_add_path` add your bin directory to fish context, when you execute some command got a not find this command error.
2. [Fisher](https://github.com/jorgebucaran/fisher) Install
It's Fish shell's Plugin manager tools.
```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```
3. [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) Install
4. [Tide](https://github.com/IlanCosman/tide) Install
Fish Shell theme.
```bash
fisher install IlanCosman/tide@v5
```
5. [Z for fish](https://github.com/jethrokuan/z) Install
Directory jumping
```bash
fisher install jethrokuan/z
```
6. [Exa](https://the.exa.website/) Install
`ls` replacement
```bash
apt install exa
```
7. [ghq](https://github.com/x-motemen/ghq) Install
Local Git repository organizer
```bash
brew install ghq
```
8. [peco](https://github.com/peco/peco) Install
Interactive filtering
```bash
apt install peco
```
### Vim setup
1. [Neovim](https://neovim.io/) Install
Requires Neovim(>=0.5)
```bash
brew install neovim
```
2. [vim-plug](https://github.com/junegunn/vim-plug) Install
A minimallist Vim plugin manager
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
3. [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) Install 
A collection of configurations for Neovim's built-in LSP
4. [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) Install 
Treesitter configurations and abstraction layer for Neovim
5. [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) Install
A completion plugin for neovim coded in Lua
6. [lspsaga.nvim](https://github.com/tami5/lspsaga.nvim) Install 
A light-weight LSP plugin based on Neovim built-in LSP with highly a performant UI
7. [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer) Install
An LSP server installer. It is used for installing an LSP server for Tailwind CSS
8. [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) Install 
A highly extendable fuzzy finder over lists
9. [defx.nvim](https://github.com/Shougo/defx.nvim) Install 
A file explorer