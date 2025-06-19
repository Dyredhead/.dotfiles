function edit --wraps $EDITOR --description 'alias of \"$EDITOR\"'
    if test -n "$EDITOR_OPTS"
        eval command $EDITOR $EDITOR_OPTS $argv
    else 
        eval command $EDITOR $argv
    end
end
