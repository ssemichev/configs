[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

export PS1='\u@\H  \[\033[0;33m\]\w\n\[\033[00m\]$'

export AWS_DEFAULT_REGION=us-east-1

# Paste multi-line bash codes into terminal and run it all at once
# Ctrl-x-e
export VISUAL=emacs
export EDITOR="$VISUAL"

if [ -f ~/.bash_aliases ]; then 
	. ~/.bash_aliases
fi

export PATH=/usr/local/bin:$PATH

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home;
export JAVA_HOME;

export PATH=$PATH:$JAVA_HOME;

export PATH=$PATH:/usr/local/hadoop/bin

export PATH=$PATH:/usr/local/spark/bin

export IGNITE_HOME=/opt/ignite
export HADOOP_HOME=/opt/hadoop
