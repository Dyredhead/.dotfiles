function ls --wraps $LISTER --description 'alias of \"$LISTER\"' 
    if test -n "$LISTER_OPTS"
        eval command $LISTER $LISTER_OPTS $argv
    else
        eval command $LISTER $argv
    end
end

# function ls --description 'eza instead of ls'
# 	if command -q eza
#     	eza --group-directories-first --git --icons --across $argv
#   	else
#     	command ls --color=auto $argv
#   	end
# end
