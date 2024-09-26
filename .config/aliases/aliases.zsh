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

# Wallpaper
alias wallpaper='~/.config/scripts/set_wallpaper.sh'

# Change alacritty opacity
alias opacity='python ~/.config/scripts/change_alacritty_opacity.py'

# Change alacritty theme
alias theme='python ~/.config/scripts/change_alacritty_theme.py'

# Change theme and opacity
alias nord='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py nord && python ~/.config/scripts/change_nvim_theme.py nord'
alias mocha='python ~/.config/scripts/change_alacritty_opacity.py 0.8 && python ~/.config/scripts/change_alacritty_theme.py cat && python ~/.config/scripts/change_nvim_theme.py cat'
alias kana='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py kana && python ~/.config/scripts/change_nvim_theme.py kana'
alias glacier='python ~/.config/scripts/change_alacritty_opacity.py 0.9 && python ~/.config/scripts/change_alacritty_theme.py cat && python ~/.config/scripts/change_nvim_theme.py glacier'
alias solar='python ~/.config/scripts/change_alacritty_opacity.py 0.8 && python ~/.config/scripts/change_alacritty_theme.py solar && python ~/.config/scripts/change_nvim_theme.py solar && ~/.config/scripts/set_wallpaper.sh solar'
alias light='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py light && python ~/.config/scripts/change_nvim_theme.py light && ~/.config/scripts/set_wallpaper.sh solar'
alias poi='python ~/.config/scripts/change_alacritty_opacity.py 0.9 && python ~/.config/scripts/change_alacritty_theme.py poi'
alias storm='python ~/.config/scripts/change_alacritty_opacity.py 1.0 && python ~/.config/scripts/change_alacritty_theme.py storm'

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

# List bluetooth connections
alias blueds='bluetoothctl devices Connected'

# Airpods
alias airpods='bluetoothctl connect 40:E6:4B:84:22:17'
alias airpodsoff='bluetoothctl disconnect 40:E6:4B:84:22:17'
