# get directory to this file
DOTFILES=$(dirname $_:a)

files=".zshrc"

source "$DOTFILES/functions.sh"

for file in $files; do
  safe_link "$DOTFILES/$file" "$HOME/$file"
done
