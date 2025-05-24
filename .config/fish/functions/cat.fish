function cat --description 'alias of \"$READER\"' --wraps $READER
    eval command $READER $READER_OPTS $argv
end
