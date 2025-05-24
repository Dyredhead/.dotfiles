function page --description 'alias of \"$PAGER\"' --wraps $PAGER
    eval command $PAGER $PAGER_OPTS $argv
end
