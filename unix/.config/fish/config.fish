####
#
# fish config file
#
# by
#
# Sjoerd
#

# exports and aliases
source "$HOME/.exports"
source "$HOME/.aliases"

# dircolors
eval (dircolors -c $HOME/.dircolors)

# virtual fish
eval (python -m virtualfish)

# settings
set -g theme_newline_cursor yes
set -g theme_display_vi no
set -g theme_color_scheme gruvbox
set -g theme_nerd_fonts yes
set -g fish_color_command white --bold
set -g fish_color_autosuggestion 555 green
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --dbold
set -g fish_color_host normal
set -g fish_color_match --background=green
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow --background=black
set -g fish_color_selection white --bold --background=black
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
set -g grcplugin_ls --color
