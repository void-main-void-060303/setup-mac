# import script
source $HOME/.bash_tools/git-completion.bash
source $HOME/.bash_tools/git-prompt.sh

# prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
#export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
export PS1='\[\033[1;33m\]\t \[\033[1;35m\]\W/\[\033[1;36m\]$(__git_ps1)\[\033[00m\] \$ '

# add PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"


# export
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad

# dir_color
if type -P dircolors >/dev/null ; then
  eval `dircolors $HOME/.dir_colors`
fi

# alias
alias ls='ls -G'
alias ll='ls -hl'

