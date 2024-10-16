# Functions
function fish_greeting; end
function fish_right_prompt; end
function fish_mode_prompt; end

# Environment
set EDITOR zed

# Vi Bindings
set fish_cursor_default     block
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

# Alias
alias ll="eza -l -g --icons --git"
alias lla="eza -l -g -a --icons --git"
alias llt="eza -1 --icons --tree --git-ignore"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs hx"

# Abbreviations
abbr lg 'lazygit'

# Source
# source ~/.config/fish/themes/catppuccin_mocha.theme
source ~/.config/fish/functions/sudo_last_command.fish

# Zoxide
zoxide init fish | source

# Starship prompt
starship init fish | source

# Can I use CLI
caniuse --completion-fish | source
