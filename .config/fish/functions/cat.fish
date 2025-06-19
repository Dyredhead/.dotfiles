function cat --wraps $READER --description 'alias of \"$READER\"' 
    if test -n "$READER_OPTS"
        eval command $READER $READER_OPTS $argv
    else 
        eval command $READER $argv
    end
end
