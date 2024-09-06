# Commands to run in interactive sessions can go here
if status is-interactive
    set -U fish_greeting ""
	
	if set -q FETCHER
        eval "$FETCHER"
        echo -ne "\n\n"
    end
    ls

    if command -q starship;	starship init fish | source; 	end
    if command -q zoxide; 	zoxide init fish | source;	    end
    if command -q atuin;	atuin init fish | source;       end

    # Needs to go here instead of ./functions/cd.fish to prevent infinite recursion with zoxide 
    function cd --description 'zoxide instead of cd'
    		if command -q zoxide
    			__zoxide_z $argv
    		else
    			builtin cd $argv
    		end
    
    	    if test "$(pwd)" = "$HOME"
    	        eval "$FETCHER"
    	        echo -ne "\n\n"
    	        ls
    	    else
    			ls -a
    		end
    end
    

end
