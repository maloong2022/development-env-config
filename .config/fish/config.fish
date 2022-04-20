if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias llt "ll --tree --level=2 -a"
alias lg "lazygit"
alias g git
alias c "clear"
alias htop="sudo htop"
alias bb="btop"
alias lua="/opt/homebrew/Cellar/openresty/1.19.9.1_2/luajit/bin/luajit"
alias zerotone="ssh root@59.110.164.152"
alias bk="cd ~/Documents/blog"
alias cbk="cd ~/Documents/cnblog"
alias sp="cd ~/Documents/shopifyplace"
alias t "tmux"
alias ide "~/.config/fish/scripts/ide"
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -g ANDROID_SDK_ROOT $HOME/Library/Android/sdk 

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
