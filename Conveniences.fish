#conveniences

#Quick directory change
    alias downloads 'cd ~/Downloads' # goes to /home/$user/Downloads
    alias config 'cd ~/.config/' # goes to /home/$user/.config
    alias .. 'cd ..'  #these 5 are meant to just make it easier to go back multiple times
    alias ... 'cd ../..'
    alias .... 'cd ../../..'
    alias ..... 'cd ../../../..'
    alias ...... 'cd ../../../../..'

# Replace ls with eza - personally i like its style, comment out if you dont,
    alias ls 'eza -al --color=always --group-directories-first --icons' # preferred listing
#    alias la 'eza -a --color=always --group-directories-first --icons'  # all files and dirs
#    alias ll 'eza -l --color=always --group-directories-first --icons'  # long format
#    alias lt 'eza -aT --color=always --group-directories-first --icons' # tree listing
#    alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles
#    alias lg 'ls | grep' # greps files from dir

#Terminal fun
    alias clock 'tty-clock -s -c -b' # ascii clock, in case you couldn see the time in the bottom right corner
    alias gay-cow 'fortune | cowsay | lolcat' #gay ass cow, fuck him.
    alias cow 'fortune | cowsay' #hetero cow, boooooooooo
    alias visualizer 'vis' # does what it fucking says on the tin
    alias music 'kitty -e "vis" && cd /home/admin/Music;cmus' # spawns a terminal and converts active on to music player
    alias weather 'curl -4 wttr.in/toronto' # fetches weather (toronto only)
    alias weather-cli 'weather-Cli get' #fetches weather when you enter a location
    alias music 'cd /home/admin/Music && cmus'
    alias fastfetch 'fastfetch -l ~/git/logos/fox4'
