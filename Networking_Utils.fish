#Networking Utils
abbr netdev  "ip -c a"

#Port scan utilities
    #Nmap aliases
    alias scanthismf='nmap -sVC -p 1-1000' # scans servies, versions and first 1000 ports on selected network device, usually shows open ports lol
    alias service-scan 'nmap -sVC -p' # scans services running on ports specified
    alias PS10k 'nmap -p 1-10000' # scans 1-10000 ports specifically, usually where all the juicy services are at
    alias PS65K 'nmap -p 1-65535' # at this point youre just asking to be found :/

