
# exports and aliases
source "$HOME/.exports"
source "$HOME/.aliases"

# dircolors
eval (dircolors -c $HOME/.dircolors)

# virtual fish
eval (python -m virtualfish)

# bibthefish settings
set -g theme_display_vagrant no
set -g theme_display_docker_machine yes
set -g theme_display_k8s_context yes
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_ruby yes
set -g theme_display_nvm yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_color_scheme solarized
set -g theme_newline_cursor yes
set -g theme_newline_prompt '▷ '

# color
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

# grc
set -g grcplugin_ls --color

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /Users/sjoerd/.nvm/versions/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish