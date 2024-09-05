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