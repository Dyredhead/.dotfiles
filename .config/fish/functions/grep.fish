function grep --wraps $GREPER --description 'alias of \"$GREPER\"' 
    if test -n "$GREPER_OPTS"
        eval command $GREPER $GREPER_OPTS $argv
    else 
        eval command $GREPER $argv
    end
end
