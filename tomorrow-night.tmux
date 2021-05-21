# ** Attribution: A modified version of https://github.com/connrs/dotfiles/blob/master/tmux/tomorrow-night.tmux
# ** Colorsheme: Tomorrow night-eighties swatch: https://raw.github.com/ChrisKempson/Tomorrow-Theme/master/Images/Tomorrow-Night-Eighties-Palette.png
#
# Color key:
# 1d1f21 Background / black
# 282a2e Current Line
# 373b41 Selection
# c5c8c6 Foreground
# 969896 Comment
# cc6666 Red
# de935f Orange
# f0c674 Yellow
# b5bd68 Green
# 8abeb7 Aqua
# 81a2be Blue
# b294bb Purple

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## set status bar
tmux set -g status-bg black

## highlight active window
tmux setw -g window-status-current-bg "#282a2e"
tmux setw -g window-status-current-fg "#81a2be"

## highlight activity in status bar
tmux setw -g window-status-activity-fg "#8abeb7"
tmux setw -g window-status-activity-bg black

## pane border and colors
tmux set -g pane-active-border-bg black
tmux set -g pane-active-border-fg "#373b41"
tmux set -g pane-border-bg black
tmux set -g pane-border-fg "#373b41"

tmux set -g clock-mode-colour "#81a2be"
tmux set -g clock-mode-style 24

tmux set -g message-bg "#8abeb7"
tmux set -g message-fg "#000000"

tmux set -g message-command-bg "#8abeb7"
tmux set -g message-command-fg "#000000"

# message bar or "prompt"
tmux set -g message-bg "#2d2d2d"
tmux set -g message-fg "#cc99cc"

tmux set -g mode-bg black
tmux set -g mode-fg "#de935f"

# right side of status bar holds "[host name] (date time)"
tmux set -g status-right-length 100
tmux set -g status-right-fg black
tmux set -g status-right-attr bold
tmux set -g status-right '#[fg=#f99157,bg=#2d2d2d] %H:%M |#[fg=#6699cc] %y.%m.%d '

# make background window look like black tab
tmux set-window-option -g window-status-bg black
tmux set-window-option -g window-status-fg white
tmux set-window-option -g window-status-attr none
tmux set-window-option -g window-status-format '#[fg=#6699cc,bg=#2d2d2d] #I #[fg=#999999,bg=#2d2d2d] #W #[black]'

# make foreground window look like white foreground tab
tmux set-window-option -g window-status-current-attr none
tmux set-window-option -g window-status-current-format '#[fg=#f99157,bg=#2d2d2d] #I #[fg=black,bg=white] #W #[black]'

# make the window has activities bold
tmux set-window-option -g window-status-activity-style bold blink

# active terminal yellow border, non-active white
tmux set -g pane-border-bg black
tmux set -g pane-border-fg "#999999"
tmux set -g pane-active-border-fg "#f99157"
