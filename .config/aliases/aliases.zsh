# Reload zshrc
alias reload='source ~/.zshrc'

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
alias p='cd ~/Projects && cd $(find . -maxdepth 1 -type d | sed "s|./||" | grep -v "^\.$" | fzf)'
alias notes='cd ~/Notes'
alias dots='cd ~/dotfiles/arch_dotfiles/'
alias today="vim ~/Notes/Todo/today.md"
alias docs='cd ~/Documents/'

# use lsd instead of vanilla ls
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'

# Changing directory using fzf
alias fd='dir=$(ls -d */ | fzf --preview "ls {}") && cd "$dir"'

# tmp notes
alias tmp='cd ~/tmp && vim tmp'

# ##################
# AESTHETICS
# ##################

source ~/.config/aliases/aesthetics.zsh

# ##################
# GIT
# ##################

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
alias gd='git diff'
alias gdc='git diff --cached'
alias gcp='git cherry-pick'

# Git Worktree Specific
alias gls='git worktree list'
alias gwa='git worktree add'
alias gwd='pwd | xargs ~/.config/scripts/git_worktree_remove_current.sh; cd ..'
alias gwcheck='pwd | xargs ~/.config/scripts/git_worktree_check_setup.sh'
alias gwfetch='git --git-dir=$(pwd) fetch origin'
alias gwaremote='~/.config/scripts/git_worktree_add_remote_branch.sh'

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
alias monitor144='hyprctl keyword monitor ,2560x1440@143.98,auto,1'

# List bluetooth connections
alias blueds='bluetoothctl devices Connected'

# Switch US-GB keyboard
alias switchkb='hyprctl switchxkblayout hhkb-hybrid_1-keyboard next'
