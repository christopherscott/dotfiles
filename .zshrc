DOTFILES="$HOME/.dotfiles"

# Functions
# -------------------------------------
source "$DOTFILES/functions.sh"

# Colors
# -------------------------------------
load_colors

# Banner
# -------------------------------------
banner "$DOTFILES/banner.txt"

# Aliases
# -------------------------------------
safe_source "$DOTFILES/aliases.sh"

# Path
# -------------------------------------
safe_source "$DOTFILES/path.sh"

# ZSH
# -------------------------------------
export ZSH=/Users/chernandez/.oh-my-zsh
plugins=(git brew web-search npm)
ZSH_THEME="pure"
PURE_PROMPT_SYMBOL=λ
safe_source "$ZSH/oh-my-zsh.sh"
setopt correct

# z script: https://github.com/rupa/z
# -------------------------------------
safe_source "$DOTFILES/z/z.sh"

# Local config
# -------------------------------------
divider
safe_source "$HOME/.local"
