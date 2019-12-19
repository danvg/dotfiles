set-option -g default-terminal "screen-256color"
# set-option -g pane-active-border-fg green
set-option -g history-limit 10000

# setw -g mode-mouse on
# setw -g mouse-select-pane on
set -g mouse on

set -g base-index 1
# setw -g mode-bg black
setw -g automatic-rename

set-option -g status-justify right
set-option -g status-bg black # colour213 # pink
set-option -g status-fg cyan
set-option -g status-interval 5
set-option -g status-left-length 30
set-option -g status-left '#[fg=magenta]» #[fg=blue,bold]#T#[default]'
set-option -g status-right '#[fg=red,bold][[ #(git branch) branch ]] #[fg=cyan]»» #[fg=blue,bold]###S #[fg=magenta]%R %Y/%m/%d#(acpi | cut -d ',' -f 2)#[default]'
set-option -g visual-activity on

# Titles (window number, program name, active (or not)
set-option -g set-titles on
set-option -g set-titles-string '#H:#S.#I.#P #W #T'

# VIM compability

unbind-key l
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind s split-window -v
bind v split-window -h

bind < resize-pane -L 8
bind > resize-pane -R 8
bind - resize-pane -D 8
bind + resize-pane -U 8

