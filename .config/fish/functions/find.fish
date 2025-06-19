function find --wraps $FINDER --description 'alias of \"$FINDER\"' --wraps $FINDER
    if test -n "$FINDER_OPTS"
        eval command $FINDER $FINDER_OPTS $argv
    else 
        eval command $FINDER $argv
    end
end
