#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster-tb"

#source ~/.zplug/init.zsh
#zplug "lukechilds/zsh-nvm"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias x='exit'
alias o='open .'
alias hhh="cd ~H5UI;gulp sync --host 172.30.58.27 --theme light"
alias ddd="git branch | grep -v release | grep -v \* | grep -v Dev_ | xargs git branch -D"
alias ss="ssh root@172.30.58.27"
alias cpear="scp ~FortiSIEM/phoenix/src/java/phoenix-ear/target/phoenix-mgmt-1.0.ear root@172.30.58.27:/opt/phoenix/deployment"
alias cpear2='cpear2(){scp ~FortiSIEM/phoenix/src/java/phoenix-ear/target/phoenix-mgmt-1.0.ear root@$1:/opt/phoenix/deployment};cpear2'
alias cleanbuild="~FortiSIEM;git pull;cd phoenix/src/java;mvn clean install;cpear"
alias rrr="cd ~H5UI;git checkout releases/FCS5_2_5;git pull;git rebase"
alias ccc="git branch | grep -v releases | grep -v Dev | xargs git branch -D"
alias co='f(){rrr;git checkout -b $1};f'

# Robotics practice.
hash -d rob=$HOME"/Documents/Learning/Material/Robotics"
alias rob="cd ~rob/RoboND-Python-StarterKit;conda activate RoboND;cd ~rob/RoboND-Rover-Project"
alias runrob="rob;cd code;python drive_rover.py"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump osx git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
export PATH=/Users/tangbin/Work/SDK/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/.rbenv/versions/2.5.1/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

hash -d H5UI=$HOME"/Workspace/FortiSIEM/phoenix/src/java/phoenix-h5ui"
hash -d FortiSIEM=$HOME"/Workspace/FortiSIEM"
hash -d chart=$HOME"Workspace/FortiSIEM/phoenix/src/java/phoenix-charting"
