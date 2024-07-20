# Help
alias pwnhelp='cat -n -s $HOME/.bashrc.d/pwn-aliases.bashrc'
#alias pwnhelp='bat -n -l bash $HOME/.bashrc.d/pwn-aliases.bashrc'

## Pentest
#alias haxmenu='sudo haxmenu'
alias l='sudo /opt/lscript/l'
alias autosploit="cd /opt/AutoSploit; bash -c 'sudo python2 autosploit.py'"
alias msfconsole=msf_shell
alias blackeye='bash /opt/blackeye/blackeye.sh'
#alias rsf="cd /opt/routerploit; bash -c 'sudo python3 rsf.py'"

#Bluetooth
#alias bluehydra='cd bluetooth; sudo /opt/blue_hydra/bin/blue_hydra'
alias hbtscan='sudo hciconfig hci0 up; sudo hcitool scan'
#alias btscanner='sudo btscanner'
#alias hcitlname='sudo hcitool name'
#alias hcitling='sudo hcitool inq'
#alias sdptlbrws='sudo sdptool browse'
#alias l2ping=''

#WiFi
alias monenwl0='sudo monenwl0'
alias mondiswl0='sudo mondiswl0'
alias wifite='cd wifi;sudo wifite -i wlan0 --bully -mac --dict /usr/share/dict/wordlist-top4800-probable.txt'
alias airgeddon='cd wifi; sudo /opt/airgeddon/airgeddon.sh'

##NetScan
#masscan
alias avadisc='avahi-browse -artf'
#NMap
alias fragscan='sudo nmap -f'
alias decoyscan='nmap -D RND:10'
alias randomscan='nmap --randomize-hosts'
alias oportscan='nmap --source-port 20,53,67'
alias spoofscan='nmap --spoof-mac 0'
alias badsumscan='nmap --badsum'

#tcpdump
alias dumpethdns='tcpdump -i eth0 udp port 53'
alias dumpwldns='tcpdump -i wlan0 udp port 53'
alias dumpethicmp='tcpdump -i eth0 icmp'
alias dumpwlicmp='tcpdump -i wlan0 icmp'
alias dumpethicmp6='tcpdump -i eth0 icmp6'
alias dumpwlicmp6='tcpdump -i wlan0 icmp6'

#tshark
alias sharkethhttpreq='tshark -i eth0 -Y http.request -T fields -e http.host -e http.user_agent'
alias sharkwlhttpreq='tshark -i wlan0 -Y http.request -T fields -e http.host -e http.user_agent'
alias sharkwlpw="tshark -i wlan0 -Y 'http.request.method == POST and tcp contains "password"' | grep password"
alias sharkethpw="tshark -i eth0 -Y 'http.request.method == POST and tcp contains "password"' | grep password"

# Web
alias nikto='/opt/nikto/program/nikto.pl'
# Log

# Pwnagotchi
#alias pwnver='python3 -c "import pwnagotchi as p; print(p.__version__)"'
#alias pwnlog='tail -f -n300 /var/log/pwn*.log | sed --unbuffered "s/,[[:digit:]]\{3\}\]//g" | cut -d " " -f 2-'
