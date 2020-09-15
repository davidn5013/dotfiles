## EXAMPEL alias from websites
# update our debian/ubuntu box
## set eth0 as an interface for eth0  
#alias vnstat='vnstat -i eth0'
## flush redis cache for wp
#alias flush_redis='redis-cli -h 127.0.0.1 FLUSHDB'
#alias vnstat='vnstat -i eth0'

# ** My alias **
alias dnt='tmux attach -tdn || tmux new -sdn'
alias update='sudo -- sh -c "apt update && apt upgrade"'
## make grep output colorful 
alias grep='grep --color=auto'
 
# Alla Functions below
hello() {
    echo Hello!
}

functionaliaslist() {
    echo
    echo -e "\033[1;4;32m""Functions:""\033[0;33m"
    compgen -A function
    echo
    echo -e "\033[1;4;32m""Aliases:""\033[0;33m"
    compgen -A alias
    echo
    echo -e "\033[0m"
}	

instapp() {
    sudo -- sh -c "apt update && apt install $@" 
}

alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

##Baregit aliases
alias bgit='/usr/bin/git --git-dir=/home/davidn/.cfg/ --work-tree=/home/davidn'
alias bgitf='config ls-tree --full-tree -r --name-only HEAD'

# The end
