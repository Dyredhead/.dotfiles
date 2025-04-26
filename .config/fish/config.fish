# Commands to run in interactive sessions can go here
if status is-interactive
    set -U fish_greeting ""
	
	if set -q FETCHER
        eval "$FETCHER"
        echo -ne "\n\n"
    end
    ls

    if command -q starship;	starship init fish | source; 	                end
    if command -q zoxide; 	zoxide init fish | source;	                    end
    if command -q atuin;	atuin init fish --disable-up-arrow | source;    end

    fzf_configure_bindings --history
    bind \cr _atuin_search
    
    # Needs to go here instead of ./functions/cd.fish to prevent infinite recursion with zoxide 
    function cd --description 'zoxide instead of cd'
    		if command -q zoxide
    			z $argv
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

    # Load host specific configs
    if test -e "$HOME"/.config/fish/conf.d/host/"$HOSTNAME".fish
        source "$HOME"/.config/fish/conf.d/host/"$HOSTNAME".fish
    end

    # Bind alt+(left/right) to jump entire line
    bind \e\[1\;3D beginning-of-buffer  
    bind \e\[1\;3C end-of-buffer


    set -gx MANPAGER "sh -c 'col -bx | bat --theme=default -l man -p'"
    set -gx MANROFFOPT "-c"
    
    set -gx SCHOOL "$HOME/Documents/School/14th Grade (Sophmore)/Spring Semester/"  
    set -gx PERSONAL "$HOME/Documents/Personal/"

end
