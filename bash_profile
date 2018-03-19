# スクリプト読み込み
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

# hubをgitにエイリアス
eval "$(hub alias -s)"

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[1;33m\]\t \[\033[1;35m\]\W/\[\033[1;36m\]$(__git_ps1)\[\033[0m\] $ '

# 環境変数設定み
export PATH="$HOME/.node_modules_global/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export TOMCAT_HOME=/usr/local/tomcat

# oracle
export ORACLE_BASE=/Applications/oracle
export ORACLE_HOME=$ORACLE_BASE/product/instantclient_64/10.2.0.4.0
export PATH=$ORACLE_HOME/bin:$PATH
export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib
export TNS_ADMIN=$ORACLE_BASE/network/admin
export NLS_LANG=Japanese_Japan.AL32UTF8

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
