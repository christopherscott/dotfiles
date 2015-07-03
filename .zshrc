
# Path to your oh-my-zsh installation.
export ZSH=/Users/chernandez/.oh-my-zsh

# Path
export PATH=""
export PATH="$PATH:/usr/local/heroku/bin" # added by Heroku Toolbelt
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/MacOS/bin"

# Theme
ZSH_THEME="pure"
PURE_PROMPT_SYMBOL=λ

# Plugins
plugins=(git brew web-search npm)

# Spelling correction
setopt correct

# Redefine colors, for use outside of the prompt
typeset -Ag COLOR
for color in {000..255}; do
    COLOR[$color]="[38;5;${color}m"
done

# Load zsh
source $ZSH/oh-my-zsh.sh

# Banner
echo $COLOR[002]
cat ~/banner.txt
echo $reset_color

# Z script: https://github.com/rupa/z
source ~/Development/z/z.sh

# Aliases
alias y="cd ~/Development/tm-web-y"
alias -g devel="~/Development"
alias dev="devel"
alias clean="cd ~/Development/pure"
alias s="subl ."
alias zshrc="subl ~/.zshrc"
alias l="ls -aog"
alias dotfiles="cd ~/Development/dotfiles"
alias work="tmux -CC attach -t work"
alias resource="source ~/.zshrc"

# Machine-specific scripts
if [[ -f "$HOME/.local" && -r "$HOME/.local" ]]; then
  source "$HOME/.local"
fi
