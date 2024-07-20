# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add .local/bin
export PATH="${PATH}:${HOME}/.local/bin"

# Welcome screen
echo " "
/usr/games/fortune -so
echo " "
echo "** help: man / cht.sh / statcode / tldr **"

## MetaSploit
export MSF_DATABASE_CONFIG=/opt/metasploit-framework/database.yml

## Linuxbrew
#eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
