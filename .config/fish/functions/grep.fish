function grep --description 'alias of \"$GREPER\"' --wraps $GREPER
    eval command $GREPER $argv
end
