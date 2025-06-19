function page --description 'alias of \"$PAGER\"' --wraps $PAGER
    if test -n "$PAGER_OPTS"
        eval command $PAGER $PAGER_OPTS $argv
    else 
        eval command $PAGER $argv
    end
end
