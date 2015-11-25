DOTFILES="$HOME/.dotfiles"

# Functions
# -------------------------------------
source "$DOTFILES/functions.sh"

# Colors
# -------------------------------------
load_colors

# ZSH
# -------------------------------------
export ZSH=/Users/chernandez/.oh-my-zsh
plugins=(git brew web-search npm)
ZSH_THEME="pure"
PURE_PROMPT_SYMBOL=λ
safe_source "$ZSH/oh-my-zsh.sh"

setopt correct

# execute history expansion, don't wait to verify command
# allows intuitive use of `sudo !!` to execute last command
# as root
setopt NO_HIST_VERIFY
export EDITOR="vim"
export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

# Aliases
# -------------------------------------
safe_source "$DOTFILES/aliases.sh"

# Path
# -------------------------------------
safe_source "$DOTFILES/path.sh"

# z script: https://github.com/rupa/z
# -------------------------------------
safe_source "$DOTFILES/z/z.sh"

# Local config
# -------------------------------------
divider
safe_source "$HOME/.machine"
safe_source "$HOME/.local"

# Banner
# -------------------------------------
clear
banner "$DOTFILES/banner.txt"

