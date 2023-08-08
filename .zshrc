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
alias c='code'

alias lll="exa -abghHliS"

###########################################
## Start FortiSIEM use

export test_env=172.30.58.21
export fsm_www_root=/tmp/fsm
export fsm_test_root=/Users/btang/Workspace/FSM/workspace_1/phoenix/src/java/phoenix-h5ui/src/app/test/cases

alias hhh="cd ~H5UI;HOST=$test_env npm run debug"

alias local-js="cd ~H5UI;npx gulp sync --no-sync; cp -R /tmp/fortisiem-h5ui-dist/* /tmp/fsm/phoenix/html/"
alias local-ts="cd ~H5UI;npm run build; cp -R /tmp/fs-dist/* /tmp/fsm/phoenix/html"
# alias lll="cd ~H5UI;npm run build-clean; rm -rf /tmp/fsm; mkdir -p /tmp/fsm/phoenix/html;local-js;local-ts"

alias s1="cd $fsm_www_root; http-server -p 8888 -c-1"
alias s2="cd $fsm_test_root; http-server -p 9999 -c-1"

alias uu='f(){cd ~H5UI;HOST=172.30.$1 npm run debug};f'
alias uuu='f(){cd ~H5UI_CLEAN;HOST=172.30.$1 npm run debug};f'
alias ddd="git branch | grep -v release | grep -v \* | grep -v Dev_ | xargs git branch -D"
alias ddall="git branch | grep -v \* | xargs git branch -D"
alias ss="ssh root@$test_env"
alias rrr="cd ~H5UI;git checkout releases/FCS5_3_0;git pull;git rebase"
alias ccc="git branch | grep -v releases | grep -v Dev | xargs git branch -D"
alias co='f(){rrr;git checkout -b $1};f'
alias dp='f(){cd ~H5UI;HOST=$1 npm run debug};f'
# alias cpear="scp ~FortiSIEM/phoenix/src/java/phoenix-ear/target/phoenix-mgmt-1.0.ear root@172.30.58.21:/opt/phoenix/deployment"
# alias cpear2='cpear2(){scp ~FortiSIEM/phoenix/src/java/phoenix-ear/target/phoenix-mgmt-1.0.ear root@$1:/opt/phoenix/deployment};cpear2'
# alias cleanbuild="~FortiSIEM;git pull;cd phoenix/src/java;mvn clean install;cpear"
# alias tt='f(){cd ~FortiSIEM/phoenix;./src/cpp/scripts/text.py -c $1;./src/cpp/scripts/text.py -b;};f'
alias cof='f(){cd ~H5UI;git checkout releases/FCS$1;git pull;git rebase;ccc;git checkout -b $2};f'
alias coff='f(){cd ~H5UI;git checkout $1;git pull;git rebase;ccc;git checkout -b $2};f'
alias cofc='f(){cd ~H5UI_CLEAN;git checkout releases/FCS$1;git pull;git rebase;ccc;git checkout -b $2};f'
alias coffc='f(){cd ~H5UI_CLEAN;git checkout $1;git pull;git rebase;ccc;git checkout -b $2};f'

alias mm="defaults write .GlobalPreferences com.apple.mouse.scaling -1"
alias mmm="defaults write .GlobalPreferences com.apple.mouse.scaling 3"

hash -d H5UI_1=$HOME"/Workspace/FSM/workspace_1/phoenix/src/java/phoenix-h5ui"
hash -d H5UI_2=$HOME"/Workspace/FSM/workspace_2/phoenix/src/java/phoenix-h5ui"
hash -d H5UI_3=$HOME"/Workspace/FSM/workspace_3/phoenix/src/java/phoenix-h5ui"
hash -d H5UI_4=$HOME"/Workspace/FSM/workspace_4/phoenix/src/java/phoenix-h5ui"
hash -d H5UI_5=$HOME"/Workspace/FSM/workspace_5/phoenix/src/java/phoenix-h5ui"
hash -d FortiSIEM=$HOME"/Workspace/FSM/workspace_1"
hash -d chart=$HOME"/Workspace/FSM/workspace_1/phoenix/src/java/phoenix-charting"

## END FortiSIEM use
############################################

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

export PATH=$HOME/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/n/bin
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-12.0.1.jdk/Contents/Home/
# export PATH=/Users/tangbin/Work/SDK/flutter/bin:$PATH
# export PATH="$PATH":"$HOME/.pub-cache/bin"
# export PATH="$PATH":"$HOME/.rbenv/versions/2.5.1/bin"
# export PATH="$PATH:$HOME/anaconda3/bin"
# export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
# export PATH="$PATH:$HOME/.cargo/bin"
# export GAZEBO_PLUGIN_PATH="$GAZEBO_PLUGIN_PATH:$HOME/Workspace/udacity-robo/new_prj_1/build"

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

# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Created by `userpath` on 2020-05-29 15:59:44
# export PATH="$PATH:/home/tangbin/.local/bin"


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
# [[ -f /Users/btang/Workspace/electron-quick-start/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/btang/Workspace/electron-quick-start/node_modules/tabtab/.completions/electron-forge.zsh

# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"