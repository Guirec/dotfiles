# Functions
function fish_greeting; end
function fish_right_prompt; end
function fish_mode_prompt; end

set GPG_TTY (tty)

# Environment
set EDITOR vscode

# Vi Bindings
set fish_cursor_default     block
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

# Source
source ~/.config/fish/theme_tokyonight_storm.fish
source ~/.config/fish/functions.fish

# Starship prompt
starship init fish | source
