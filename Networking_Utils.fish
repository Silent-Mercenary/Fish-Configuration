#Networking Utils
abbr netdev  "ip -c a"

#Port scan utilities
    #Nmap aliases
    alias scanthismf='nmap -sVC -p 1-1000' # scans servies, versions and first 1000 ports on selected network device, usually shows open ports lol
    alias service-scan 'nmap -sVC -p' # scans services running on ports specified
    alias PS10k 'nmap -p 1-10000' # scans first 10k ports for commonly used services or anything public sided
    alias PS65K 'nmap -p 1-65535' # at this point youre just asking to be found :/

#Tailscale Admin shit

	alias ts-jose='doas tailscale switch mojomonkey365@gmail.com'
	alias ts-aiden='doas tailscale switch taras.tk06@gmail.com'

# Tailscale Devices
	#
	alias nixos-server='ssh 100.110.110.2'
	alias medabox='ssh 100.110.110.105'
	alias server='ssh 100.110.110.254 -p 22222 -i ~/.ssh/id_admin  '
