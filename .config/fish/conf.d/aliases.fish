abbr resource 'source $XDG_CONFIG_HOME/fish/config.fish && source $XDG_CONFIG_HOME/fish/conf.d/*.fish'

# cd
abbr .. 'cd ../'

# Unix
abbr c 'clear'
abbr cf 'clear && "$FETCHER"'
abbr ccd 'clear && cd'

# System Administration
abbr sudo 'sudo'
abbr sduo 'sudo' # I am bad at spelling :(
abbr dmesg 'dmesg -wHT'
# abbr dotfiles '/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

abbr poweroff 'systemctl poweroff -i'
abbr shutdown 'systemctl poweroff -i'
abbr restart 'systemctl reboot -i'
abbr reboot 'systemctl reboot -i'
abbr hibernate 'systemctl hibernate -i'
abbr suspend 'systemctl suspend -i'
abbr logout 'loginctl terminate-user "$USER"'
abbr lock 'loginctl lock-session'

abbr history 'history -i'

abbr la 'ls -a'
abbr ll 'ls -l'


if command -q trashy
	abbr trash 'trashy put'
end

if command -q rsync
	abbr rsync 'rsync --archive --recursive'
	abbr rsyncp 'rsync --archive --recursive --progress --stats --info=progress2 --out-format="%t %f %''b"'
	# abbr cp 'rsync --archive --recursive'
	# abbr cpp 'rsync --archive --recursive --progress --stats --info=progress2 --out-format="%t %f %''b"'
	# abbr mv ''
	# abbr mvp ''
# else
	# abbr cp 'cp --interative --recursive'
end

abbr cp 'cp --interactive --recursive'
abbr mv 'mv --interactive '

# Git
if command -q git
	abbr ga 'git add'
	abbr gaa 'git add *'
	abbr gc 'git commit -m'
	abbr gca 'git commit -am'
	abbr gcq 'git commit --allow-empty-message -am ""'
	abbr gp 'git push'
	abbr gpq 'gcq; gp'
	abbr gw 'abbr gh="firefox https://$(git config remote.origin.url | cut -f2 -d@ | tr ":" /)"'
	abbr gnf 'onefetch'
	abbr gs 'git status'
end

# Development
if command -q make
	abbr clean 'make clean'
	abbr compile 'make compile'
	abbr run 'make run'
end

if command -q sapm
	abbr pm 'sapm'
end

abbr gcc 'gcc -Wall -lstdc++'


# Fun stuff
abbr bonsai 'cbonsai -l'
abbr donut 'donut.c'
abbr matrix 'unimatrix -n -s 96 -l "m" -i'
abbr pipes 'pipes-rs'
abbr nf 'neofetch'



abbr autojump 'jumpto'
abbr cal 'cal -m'
abbr fd 'fdir'
#abbr grep="rg --color=always -i --context=0 -n "
#abbr make="make -s --no-print-directory "
#abbr mv="rsync -aP --remove-source-files "
# abbr nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
abbr pacman-all 'pacman -Slq | fzf --preview "pacman -Si {}" --layout=reverse --bind "enter:execute(pacman -Syu {})"'
abbr pacman-installed 'pacman -Qq | fzf --preview "pacman -Qil {}" --layout=reverse --bind "enter:execute(pacman -Qil {} | less)"'
# abbr rsync="rsync -P -r"
abbr running_services 'systemctl list-units --type=service --state=running'
abbr {vsc,vscode} 'code'
# abbr wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
#abbr yarn 'yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config'
