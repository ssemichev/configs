alias all="grep alias ~/.bash_aliases"
alias all_ssh="less ~/.ssh/config"
alias cdl="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias cls=clear
alias rmdir="rm -rf"
alias d=date
alias ff="find . -name $1"
alias h="history"
alias hg="history | grep $1"
alias l=ls
alias la="ls -a"
alias lt="ls -ltr"
alias ll="ls -alhG"
alias sl=ls
alias more=less
alias mroe=more
alias m=more
alias r="fc -s"
alias igrep="grep -i"
alias grepr="grep -i -r"
alias agi="sudo apt-get install"
alias psg="ps aux | grep"
alias tf="tail -f"
alias snano="sudo nano"
alias be="bundle exec"
alias br="be rake"
alias rr="be rails"
alias rmigc="bundle exec rake db:migrate && rake db:test:clone"
alias estunnel="ssh -L 9200:localhost:9200 search-2.blue.process.prod"
alias stormssh="ssh user@host"
alias ambaridev='ssh -L 8080:localhost:8080 ip-10-0-11-222.ec2.internal'
alias ambariprod='ssh -L 8080:localhost:8080 ambari.blue.process.prod'

alias gs="git status"
alias gd="git diff"
alias gca="git commit -a"
alias gc="git checkout"

alias psql_aws="psql -h <host> -d <database> -U <login> -p 5439 -w"
alias redis='redis-server /usr/local/etc/redis.conf'
alias load_ssh='eval `ssh-agent`;ssh-add ~/.ssh/*.pem;ssh-add ~/.ssh/id_rsa'
alias unload_ssh='eval `ssh-agent -k`'

e() { emacs "$@" & }

alias dfs="hdfs dfs $1"