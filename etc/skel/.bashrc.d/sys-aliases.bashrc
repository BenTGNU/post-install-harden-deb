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
#alias borgls='borg list --remote-path /usr/bin/borg ssh://a'
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
alias connected='sudo nmap -O 192.168.0.1-255 | grep "Running: " | sort | uniq -c'

# Logging
#alias cat='bat -n'
alias msgtail='sudo tail -f /var/log/messages | ccze'
alias systail='sudo tail -f /var/log/syslog | ccze'
