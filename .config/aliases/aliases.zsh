# ##################
# OPENING FILES
# ##################

#xdg-open
alias open='xdg-open'
# use Neovim
alias vim='nvim'

# ##################
# COMMON COMMANDS
# ##################

# pacman
alias pacman='sudo pacman'
# Quick Navigation
alias p='cd ~/Projects'
alias dots='cd ~/arch_dotfiles/'
# use lsd instead of vanilla ls
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'
# Changing directory using fzf
alias fd='cd $(find * -type d | fzf)'

# ##################
# AESTHETICS
# ##################

source ~/.config/aliases/aesthetics.zsh

# ##################
# GIT
# ##################

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
alias gwd='pwd | xargs ~/.config/scripts/git_worktree_remove_current.sh; cd ..'
alias gd='git diff'
alias gdc='git diff --cached'

# ##################
# TMUX
# ##################

alias tma='tmux attach -t'
alias tmn='tmux new -s'
alias tls='tmux ls'

# ##################
# TOOLS
# ##################

# ScreenRecord
alias screenrecord='wf-recorder -g "$(slurp)" -f'

# Music
alias music="ncmpcpp"

# Redshift
alias night="nohup gammastep -O 4500K &"

# ##################
# DEVICES
# ##################
# Rotate monitor 90 degrees
alias rotate='~/.config/scripts/rotate.sh'

# Monitor scaling
alias monitor1='hyprctl keyword monitor ,preferred,auto,1'
alias monitor2='hyprctl keyword monitor ,preferred,auto,1.25'

# List bluetooth connections
alias blueds='bluetoothctl devices Connected'

# Switch US-GB keyboard
alias switchkb='hyprctl switchxkblayout hhkb-hybrid_1-keyboard next'

# Airpods
alias airpods='bluetoothctl connect 40:E6:4B:84:22:17'
alias airpodsoff='bluetoothctl disconnect 40:E6:4B:84:22:17'
