set -g base-index 1
set -g pane-base-index 1
set -g renumber-windows on
set -g status-position top
set -as terminal-overrides ",gnome*:Tc"
set -g status-left ' #[fg='#88507D',bold]#{s/root//:client_key_table} '
set -g status-right '#[fg='#88507D',bold] [#S]#[fg='#88507D',bold] [%d/%m] #[fg='#88507D',bold][%I:%M%p] '
set -g status-style fg='#88507D',bg='#F0EDEC'
set -g window-status-current-style fg='#88507D',bg='#F0EDEC',bold
set -g pane-border-style fg='#88507D'
set -g pane-active-border-style fg='#88507D'
set -g message-style fg='#2C363C',bg='#D2DFE7'
set -g display-panes-active-colour '#88507D'
set -g display-panes-colour '#88507D'
set -g clock-mode-colour '#88507D'
set -g mode-style fg='#2C363C',bg='#D2DFE7'
