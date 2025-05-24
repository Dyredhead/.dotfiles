function find --description 'alias of \"$FINDER\"' --wraps $FINDER
    eval command "$FINDER" $argv
end
