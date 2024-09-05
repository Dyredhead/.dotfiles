function ls --description 'eza instead of ls'
	if command -q eza
    	eza --group-directories-first --git --icons --across $argv
  	else
    	ls --color=auto $argv
  	end
end