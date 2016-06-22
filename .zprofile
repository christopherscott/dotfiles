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
export PYTHONPATH="/usr/local/Cellar/pillow/2.7.0/lib/python2.7/site-packages"

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

# Banner
# -------------------------------------
clear
banner "$DOTFILES/banner.txt"

export NVM_DIR="/Users/chernandez/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

npm set progress=false


