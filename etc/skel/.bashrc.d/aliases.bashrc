# Définition des aliases
alias mv='mv --interactive --verbose' # no spelling correction on mv  
alias cp='cp --interactive --verbose' # no spelling correction on cp
alias mkdir='mkdir' # no spelling correction on mkdir
alias rm='rm --interactive --verbose' # no spelling correction on rm
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
#alias tree="find . | sed 's/[^/]*\\//|   /g;s/| *\\([^| ]\\)/+--- \\1/'"
#alias mkdir='mkdir -pv'
alias pg='ps aux | grep'
alias pl='ps faux | most'
alias px='ps auxf | grep -v grep | grep -i -e VSZ -e'
alias top='htop -d 50'
alias topbg='htop -d 600'
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
# Lister seulement les répertoires et les liens
# symboliques pointant vers des répertoires
alias lsd='ls -ld *(-/DN)'
# Lister seulement les fichiers cachés
alias lsa='ls -ld .*'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias df='df -k'
alias dff='df -hT --total'
alias dft='dfc -To'
alias du='du -h'
alias du+='du -h --max-depth=1 | sort -h -r | less'
alias dusort='du -x --block-size=1048576 | sort -nr'
alias dus='du -hsc'
alias dua='du -ach | sort -h'
#alias du='ncdu -q'
alias mg='vim'
alias bc='bc -l'
alias sha1='openssl sha1'
alias diff='colordiff'
alias detox='detox -s utf_8'
#alias fzf="fzf --preview 'bat --style=numbers --color=always {}'"
alias cpv='rsync -a --info=progress2 --no-i-r'
alias mountt='mount |column -t'
alias tb="nc termbin.com 9999"
alias vrtx-s='wormhole send'
alias vrtx-r='wormhole receive'
alias vpnstat='tail -f /var/log/syslog | grep -i vpn'
alias wget='wget -c'
alias wgett='wget -nc -c -v'
alias sget='aria2c --allow-overwrite=true -c --file-allocation=none --log-level=error -m2 --max-connection-per-server=2 --max-file-not-found=5 --min-split-size=5M --no-conf --remote-time=true --summary-interval=60 -t5'

# Personnel
alias ascavi='mplayer -vo caca'
alias bmplayer='mplayer -x 704 -y 576'
#alias clbsync="rsync -avz --delete ./Bibliothèque/* -e 'ssh -p 5222' admin@192.168.0.200:/volume1/OPDS/"
alias clock='tty-clock -scC2'
#alias cmd='wine ~/.wine/drive_c/windows/system32/cmd.exe'
alias eurom='echo $(shuf -i 1-49 | head -n5 | sort -n) - $(shuf -i 1-10 | head -n2 | sort -n)'
alias lock='cmatrix -s && vlock'
alias mapscii='telnet mapscii.me'
alias meteo='curl -H "Accept-Language: fr" -4 wttr.in/Mulhouse'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias path='echo -e ${PATH//:/\\n}'
alias rmssay='vrms | cowsay -f rms'
alias swascii='telnet towel.blinkenlights.nl'

# Power
alias bye="systemctl poweroff"
alias zzz="sync; systemctl suspend"

#Config
alias atscfg='vim $HOME/.config/subtle/autostart.sh'
alias aptcfg='sudo vim /etc/apt/apt.conf'
#alias awcfg='vim ~/.config/awesome/rc.lua'
alias bashcfg='vim $HOME/.bashrc'
#alias obcfg='vim ~/.config/openbox/rc.xml'
#alias paccfg='sudo vim /etc/pacman.conf'
#alias subcfg='vim $HOME/.config/subtle/subtle.rb'
alias sshcfg='vim $HOME/.ssh/config'
#alias zcfg='vim $HOME/.zshrc'

#RemoteControl
alias moshm='mosh --ssh="ssh -p 8022"'
alias rdpdesk='rdesktop -f -b -P -z -x l -r sound:local'
alias scp='scp -c aes128-ctr -C'
alias sshx='ssh -X'
