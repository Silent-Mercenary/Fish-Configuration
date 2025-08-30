#Utilities - General OS alias for utils

#utilities
    alias shell 'which $SHELL' # displays current shell in use, (fish obviously, cuz this alias works no where else)
    alias extract 'tar -ztvf' # extracts .tar file, do it via gui, cuz i refuse to learn the tar syntax >:(
    alias fetch-all 'fastfetch -c all -l ~/git/logos/furry' # displays system info, like neofetch, but built on rust
    alias gputop 'nvtop' # htop for your gpu
    alias sysinfo 'echo You use Arch BTW | figlet -f slant && whoami && uname -r' # basic system info
    alias myip 'curl ipinfo.io' # fetches IP details (assuming youre connected to the internet)
    alias ipconfig 'ifconfig' # fetches adapter properties, both online and offline
    alias histgrep 'history | grep' # sorts through already run commands in history to find that one fucking command youre trying to undo
    alias diskusage 'du -h --max-depth=1 | sort -hr' # shows diskusage of the current dir
    alias jctl 'journalctl -p 3 -xeu' # Get the error messages from journalctl
    alias whatonport "sudo netstat -ltnp | grep" # this might result in it looking for the local IP and not the port, use with care and brains
    alias lsd "lsblk -o MODEL,NAME,PTTYPE,FSTYPE,UUID,LABEL,PARTLABEL,MOUNTPOINTS,SIZE,FSSIZE,FSUSED,FSUSE%,FSAVAIL,PARTFLAGS" # :3
#Power Profiles
	alias performance  'powerprofilesctl set performance'
	alias balanced  'powerprofilesctl set balanced'
	alias power-saver  'powerprofilesctl set power-saver'

#Troubleshoot, forced reboot, reload
    alias HLR 'hyprctl reload' # useless due to hyprland refreshing each time you write anything within ~/.config/hypr/
    alias reboot 'reboot -i' # reboots instantly, useful to reboot after kernal or module updates, ive learned that i could just modprobe the nvidia drivers in, im fucking dumb lol
    alias killit 'poweroff -i' #force poweroff instantly, might fuck something up if youre mid update in which case, go unfuck pacman afterwards
    alias nuke-dblck 'sudo rm /var/lib/pacman/db.lck' # nukes the pacman lock incase it freezes or gets fucked up, your best friend when you run the above command mid system update.

#Kitty-Term
	alias icat 'kitty +kitten icat' # shows images in the terminal, even tho i dont remember the last damn time i used this

#package manager
    alias clone='git clone' # clones a git repo
    alias uu 'paru -Syu' # Uses trizen and AUR to update repo and upgrade packages
    alias qgrep='pacman -Q | grep' #finds installed package and version


#Configs
    alias config-pacman='sudo nano /etc/pacman.conf' # uses ROOT permissions to edit the pacman config modify with care, run with caution
    alias config-fastfetch 'cd /usr/share/fastfetch/presets/'  # Useless unless I plan on writing a config, otherwise just fetch-all
