function dotfiles --description "git wrapper for working with dotfiles" --wraps git
     git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" $argv
end
