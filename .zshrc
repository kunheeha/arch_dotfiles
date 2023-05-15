# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kunheeha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Powerlevel10k
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nodenv
eval "$(nodenv init -)"
# Pyenv
export PYENV_ROOT="$HOME/.PYENV"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# theFuck
eval $(thefuck --alias)

# Watershot
export PATH="/home/kunheeha/.cargo/bin:$PATH"

# OPTIONS
export EDITOR='nvim'
export BROWSER='firefox'
# Case sensitive completion
CASE_SENSITIVE='false'

# PLUGINS
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# zsh-history-substring-search keybinds
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ALIASES

#xdg-open
alias open='xdg-open'
# use Neovim
alias vim='nvim'
# pacman
alias pacman='sudo pacman'
# use bat instead of cat
# alias cat='bat'
# use lsd instead of vanilla ls
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'
# use ptsh cp for status bar
# alias cp='ptcp'

# Change aesthetics

# Change alacritty opacity
alias opacity='python ~/.config/scripts/change_alacritty_opacity.py'
# Change alacritty theme
alias theme='python ~/.config/scripts/change_alacritty_theme.py'
# Default wallpaper
alias wallpaper='~/.config/scripts/set_wallpaper.sh'

# Change theme and opacity
alias nord='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py nord && python ~/.config/scripts/change_nvim_theme.py nord'
alias mocha='python ~/.config/scripts/change_alacritty_opacity.py 0.8 && python ~/.config/scripts/change_alacritty_theme.py cat && python ~/.config/scripts/change_nvim_theme.py cat'
alias kana='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py kana && python ~/.config/scripts/change_nvim_theme.py kana'
alias glacier='python ~/.config/scripts/change_alacritty_opacity.py 0.9 && python ~/.config/scripts/change_alacritty_theme.py cat && python ~/.config/scripts/change_nvim_theme.py glacier'
alias solar='python ~/.config/scripts/change_alacritty_opacity.py 0.8 && python ~/.config/scripts/change_alacritty_theme.py solar && python ~/.config/scripts/change_nvim_theme.py solar && ~/.config/scripts/set_wallpaper.sh solar'
alias light='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py light && python ~/.config/scripts/change_nvim_theme.py light && ~/.config/scripts/set_wallpaper.sh solar'

alias poi='python ~/.config/scripts/change_alacritty_opacity.py 0.9 && python ~/.config/scripts/change_alacritty_theme.py poi'
alias storm='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py storm'

# Git
alias gls='git worktree list'
alias gA='git add .'
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push origin $(git branch --show-current)'
alias gpf='git push -f origin $(git branch --show-current)'
alias gbd='git branch -d'
alias gbdf='git branch -D'
alias gr='git rebase origin/master'
alias grc='git rebase --continue'
alias gm='git merge'
alias gmc='git merge --continue'
alias gf='git fetch'
alias gwa='git worktree add'
alias gd='git diff'
alias gdc='git diff --cached'

# Tmux
alias tma='tmux attach -t'
alias tmn='tmux new -s'
alias tls='tmux ls'

# Quick Navigation
alias projects='cd ~/Projects'

# ScreenRecord
alias screenrecord='wf-recorder -g "$(slurp)" -f'
# Music
alias music="ncmpcpp"

neofetch

# Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
