#Package Manager
alias aptcfg='sudo emacs -nw /etc/apt/apt.conf'
alias sysup='sudo apt update && sudo apt upgrade'
alias maj='sudo apt dist-upgrade'
alias packer='sudo yapyt'
alias inpkg='sudo apt install'
alias rmpkg='sudo apt-get autoremove --purge'
alias sepkg='apt search'
alias listrepo='bash -c "grep ^[^#] /etc/apt/sources.list /etc/apt/sources.list.d/*"'
#alias update-thunderbird="cd /tmp && wget -O ThunderbirdSetup.tar.bz2 'https://download.mozilla.org/?product=thunderbird-latest&os=linux64&lang=fr' && sudo tar xjf ThunderbirdSetup.tar.bz2 -C /opt/ && sudo rm /usr/lib/thunderbird/thunderbird && sudo ln -s /opt/thunderbird/thunderbird /usr/lib/thunderbird/thunderbird"

# System complete maintenance
function up {
        echo -e "${BOLD}Mises à jour de la base de donnée ...$DEF"
        sudo updatedb
        echo -e "${BOLD}Mises à jour de la base de donnée des paquets ...$DEF"
	sudo apt-file update
	sudo update-command-not-found
        echo -e "${BOLD}Mises à jour des paquets ...$DEF"
        sudo dpkg --configure -a
        sudo apt install -f
        sudo apt-get check -qq
	if [ -x /usr/sbin/upgrade-system ]; then
	   sudo upgrade-system
	else
		sudo apt update -qq
		sudo apt upgrade
		sudo apt autoremove --purge
		sudo apt clean -qq
		sudo apt autoclean -qq
	fi
}

function kerncleaner {
	echo -e "${BOLD}La version du noyau utilisé est :$DEF"
	uname -r
	echo -e "${BOLD}Liste des noyaux installés :$DEF"
	dpkg --list | grep linux-image
	echo -e "${BOLD}Purge des anciens noyaux ...$DEF"
	sudo aptitude purge ~ilinux-image-\[0-9\]\(\!`uname -r`\)	
}

# Create dir ancd to it
function mkcd() { 
    mkdir -p "$@" && cd "$_"; 
}

# Reviens à faire  cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak 
function cpb() { 
    cp $@{,.bak} ;
}

function cp_p()
{
   strace -q -ewrite cp -r -L -- "${1}" "${2}" 2>&1 \
      | awk '{
        count += $NF
            if (count % 10 == 0) {
               percent = count / total_size * 100
               printf "%3d%% [", percent
               for (i=0;i<=percent;i++)
                  printf "="
               printf ">"
               for (i=percent;i<100;i++)
                  printf " "
               printf "]\r"
            }
         }
         END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}

# Crée une sauvegarde du fichier passé en paramètre, en rajoutant l'heure et la date
function bak() { 
    cp "$1" "$1_`date +%Y-%m-%d_%H-%M-%S`" ; 
}

# Êtres gentil avec les ressources de son système
function nicecool() {
    if ! [ -z "$1" ] 
    then
        # Prendre en paramètre un pid
        ionice -c3 -p$1 ; renice -n 19 -p $1
    else
        # Si il n'y a pas de paramètre on nice le pid courant (le bash)
        ionice -c3 -p$$ ; renice -n 19 -p $$
    fi
}

# Extraction
function extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
	     *.tar.xz)    tar Jxvf $1    ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *.xz)	  xz -d $1     ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Notify on cmd
function sd (){
    ($@)

    if [ $? = 0 ]; then
	notify-send " Réussi : $@ "
    else
	notify-send –u critical " Raté : $@ " 
    fi
}

# Proxy Function
function proxify(){
    username=user
    password=mdp
    export http_proxy="http://$username:$password@10.67.0.1:3128/"
    export ftp_proxy="http://$username:$password@10.67.0.1:3128/"
    echo -e "\nProxy environment variable set."
}
function unprox(){
    unset HTTP_PROXY
    unset http_proxy
    unset FTP_PROXY
    unset ftp_proxy
    echo -e "\nProxy environment variable removed."
}

# Bannir l'IP d'un méchant rapidement
function ban() {
    if [ "`id -u`" == "0" ] ; then
        iptables -A INPUT -s $1 -j DROP
    else
        sudo iptables -A INPUT -s $1 -j DROP
    fi
}

# Drag'n Drop kscp
function get() {
    printf "\033]0;__pw:"`pwd`"\007" ;
    for file in $* ;
    do printf "\033]0;__rv:"${file}"\007" ;
    done ;
    printf "\033]0;__ti\007" ;
}

# WinSCP
function winscp() {
    echo -ne \"\\033];__ws:${PWD}\\007\";
}

# Always use tmux with ssh
function ssht() {
    ssh $* -t 'tmux a || tmux || /bin/bash'
}
