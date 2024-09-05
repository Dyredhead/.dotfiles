# Commands to run in interactive sessions can go here
if status is-interactive
    set -U fish_greeting ""
	
	if set -q FETCHER
        eval "$FETCHER"
        echo -ne "\n\n"
    end
    ls

    if command -q starship;	eval "$(starship init fish)"; 					end
    if command -q zoxide; 	eval "$(zoxide init --no-cmd fish)"; 			end
    if command -q atuin;	eval "$(atuin init fish --disable-up-arrow)"; 	end

end
