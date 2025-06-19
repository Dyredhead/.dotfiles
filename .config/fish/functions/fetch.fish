function fetch --wraps $FETCHER --description 'alias of \"$FETCHER\"'
    if test -n "$FETCHER_OPTS"
        eval command $FETCHER $FETCHER_OPTS $argv
    else 
        eval command $FETCHER $argv
    end
end
