# Définition des aliases
alias mv='mv --interactive --verbose'
alias cp='cp --interactive --verbose'
alias rm='rm --interactive --verbose'
alias q='exit'
alias c='clear'
alias j=jobs
alias pu=pushd
alias po=popd
alias d='dirs -v'
alias h=history
alias grep='egrep --color=auto'
alias grepr='grep -r'
alias nocomment="grep -E -v '^(#|$|;)'"
alias tree="find . | sed 's/[^/]*\\//|   /g;s/| *\\([^| ]\\)/+--- \\1/'"
alias mkdir='mkdir -pv'
alias pg='ps aux | grep'
alias pl='ps faux | most'
alias px='ps auxf | grep -v grep | grep -i -e VSZ -e'
alias top='htop -d 50'
alias topbg='htop -d 600'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
#alias df='df -hT'
alias df='dfc -To'
alias du='du -h --max-depth=1'
alias du+='du -h --max-depth=1 | sort -h -r | less'
alias dusort='du -x --block-size=1048576 | sort -nr'
alias dus='du -ch | sort -h'
alias dua='du -ach | sort -h'
#alias du='ncdu -q'
alias mg='nano'
alias bc='bc -l'
alias sha1='openssl sha1'
alias diff='colordiff'
alias detox='detox -s utf_8'
alias cpv='rsync -a --info=progress2 --no-i-r'
alias mount='mount |column -t'
alias wget='curl -O'
alias wgett='wget -nc -c -v'
alias sget='aria2c --allow-overwrite=true -c --file-allocation=none --log-level=error -m2 --max-connection-per-server=2 --max-file-not-found=5 --min-split-size=5M --no-conf --remote-time=true --summary-interval=60 -t5'

#SysUtils
alias src='cd /usr/src'
alias log='cd /var/log'
## pass options to free ##
alias meminfo='free -m -l -t'
## get top process eating memory
#alias psmem='ps auxf | sort -nr -k 4'
#alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating cpu ##
#alias pscpu='ps auxf | sort -nr -k 3'
#alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
## Get server cpu info ##
alias cpuinfo='lscpu'
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'


# SysAdm
# Stop after sending count ECHO_REQUEST packets #
#alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
alias connected='sudo nmap -sP 192.168.0.1-255 | grep "Running: " | sort | uniq -c'

# Logging
#alias cat='bat -n'
alias msgtail='sudo tail -f /var/log/messages | ccze'
alias systail='sudo tail -f /var/log/syslog | ccze'

#Config
alias aptcfg='sudo nano /etc/apt/apt.conf'
alias sshcfg='nano $HOME/.ssh/config'

#Misc
alias clock='tty-clock -scC2'
alias lock='cmatrix -s && vlock'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias meteo='curl -H "Accept-Language: fr" -4 wttr.in/Pfastatt'

# Lister seulement les répertoires et les liens
# symboliques pointant vers des répertoires
alias lsd='ls -ld *(-/DN)'

# Lister seulement les fichiers cachés
alias lsa='ls -ld .*'
