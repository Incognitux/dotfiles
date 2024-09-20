# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

export PATH="/home/incognitux/.npm/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/lib
export PATH="/home/incognitux/go/bin:$PATH"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export WORDCHARS='*?_-.[]~/'
export QT_QPA_PLATFORMTHEME=qt5ct

alias cdg="cd ~/Downloads/Installers/GitCloned"
alias cdG="cd ~/Documents/Git"
alias py=python
alias ls=lsd

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit light zsh-users/zsh-history-substring-search

zinit wait"1" lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# KEY BINDS
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3~' delete-char
bindkey '^[[3;5~' delete-word
bindkey '^H' backward-kill-word
bindkey '^U' backward-kill-line
bindkey '^K' kill-whole-line


eval "$(starship init zsh)"
export PATH=$PATH:/home/incognitux/.spicetify

# Instl.sh installer binary location
export PATH=/home/incognitux/.local/bin:$PATH
eval "$(atuin init zsh --disable-up-arrow)"

# bun completions
[ -s "/home/incognitux/.bun/_bun" ] && source "/home/incognitux/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export GPG_TTY=$(tty)
