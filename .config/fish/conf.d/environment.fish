set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"

set paths "$HOME/.local/bin" "$XDG_DATA_HOME/bin" "$HOME/.cargo/bin" "$XDG_DATA_HOME/cargo/bin/" "/usr/lib/ccache/bin/"

for _path in $paths
    if test -e $_path 
        set -gx --prepend PATH $_path
    end
end

set -gx ALIASES 	"$XDG_CONFIG_HOME/shell/aliases"
set -gx ENVIRONMENT "$XDG_CONFIG_HOME/shell/environment"
set -gx FUNCTIONS 	"$XDG_CONFIG_HOME/shell/functions"
set -gx RC 			"$XDG_CONFIG_HOME/shell/rc"
set -gx SOURCES 	"$XDG_CONFIG_HOME/shell/sources"

if command -q fzf
    set -gx FZF_DEFAULT_COMMAND "fd --type f"
    set -gx fzf_preview_dir_cmd eza --all --color=always
    set -gx fzf_fd_opts --hidden --max-depth 1
end

if command -q eza
    set -gx LISTER "eza"
    set -gx LISTER_OPTS "--icons --color=always --group-directories-first" # --across
else
    set -gx LISTER "ls"
    set -gx LISTER_OPTS "--color=always --group-directories-first"
end

if command -q micro
    set -gx EDITOR "micro"
    set -gx SUDO_EDITOR "micro"
    set -gx MICRO_TRUECOLOR "1"
else 
    set -gx EDITOR "nano"
    set -gx SUDO_EDITOR "nano"
end

if command -q bat 
    set -gx PAGER "bat"
    set -gx PAGER_OPTS "--paging always"
    
    set -gx READER "bat"
    set -gx READER_OPTS "--paging never"
else
    set -gx PAGER "less"
    set -gx PAGER_OPTS ""

    set -gx READER "cat"
    set -gx READER_OPTS ""
end

if command -q fd
    set -gx FINDER "fd"
    set -gx FINDER_OPTS ""
else
    set -gx FINDER "find"
    set -gx FINDER_OPTS ""
end

if command -q rg
    set -gx GREPER "rg"
    set -gx GREPER_OPTS "--ignore-case"
else
    set -gx GREPER "grep"
    set -gx GREPER_OPTS ""
end

if command -q code;         
    set -gx VISUAL "code" 	
end;

if command -q fastfetch;    
    set -gx FETCHER "fastfetch"	
    set -gx FETCHER_OPTS ""
end;

if command -q mangohud
	# set -gx MANGOHUD "1"
	set -gx MANGOHUD_PRESETSFILE "$XDG_CONFIG_HOME/MangoHud/presets.conf"
end

set -gx CALCHISTFILE		"$XDG_CACHE_HOME/calc_history"
set -gx CARGO_HOME			"$XDG_DATA_HOME/cargo"
set -gx CUDA_CACHE_PATH		"$XDG_CACHE_HOME/nv"
set -gx DOTNET_CLI_HOME		"$XDG_DATA_HOME/dotnet"
set -gx DVDCSS_CACHE		"$XDG_DATA_HOME/dvdcss"
set -gx GNUPGHOME       	"$XDG_DATA_HOME/gnupg"
set -gx GRADLE_USER_HOME 	"$XDG_DATA_HOME/gradle"
set -gx GTK2_RC_FILES 		"$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
# set -gx HISTFILE 			"$XDG_STATE_HOME/shell/history"
set -gx JAVA_HOME 			"/usr/lib/jvm/java"
set -gx LESSHISTFILE 		"$XDG_CACHE_HOME/less/history"
set -gx NIMBLE_DIR 			"$XDG_DATA_HOME/nimble"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx NUGET_PACKAGES 		"$XDG_CACHE_HOME/NuGetPackages"
set -gx NODE_REPL_HISTORY 	"$XDG_DATA_HOME/node_repl_history"
set -gx PYTHONSTARTUP 		"$XDG_CONFIG_HOME/python/pythonrc"
set -gx RENPY_PATH_TO_SAVES "$XDG_DATA_HOME"
set -gx RUSTUP_HOME 		"$XDG_DATA_HOME/rustup"
set -gx SQLITE_HISTORY 		"$XDG_CACHE_HOME/sqlite_history"
set -gx STARSHIP_CONFIG 	"$HOME/.config/starship/starship.toml"
set -gx TEXMFVAR 			"$XDG_CACHE_HOME/texlive/texmf-var"
set -gx WINEPREFIX 			"$XDG_DATA_HOME/wine"

set -gx --prepend PYTHONPATH 	"$HOME/.local/lib/python3.10/site-packages"
# set -gx _JAVA_OPTIONS 		-Djava.util.prefs.userRoot "$XDG_CONFIG_HOME/java"


set -gx HISTFILESIZE 1000000000
set -gx HISTSIZE 1000000000
set -gx GTK_VERSION 4

if [ "$XDG_SESSION_TYPE" = "wayland" ]
	 set -gx MOZ_ENABLE_WAYLAND 1
end

bind \cH backward-kill-word


