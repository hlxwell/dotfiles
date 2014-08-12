. .ec2rc

### Environment Vars ====================================
export CC=/Developer/usr/bin/gcc
export CXX=/Developer/usr/bin/g++
export MAKE=/Developer/usr/bin/make

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"
export EC2_URL="https://ap-southeast-1.ec2.amazonaws.com"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"

export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

export GOPATH=~/.go/
export GOROOT=/usr/local/go
export ACK_OPTIONS="--text --smart-case"
export EDITOR=/usr/bin/nano
export PATH=$GOPATH/bin:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin/:/usr/local/mysql/bin/:$HOME/bin:$HOME/go/bin:$HOME/.rvm/bin:$HOME/node_modules/.bin:$GOROOT/bin:/usr/local/mongodb/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:$PATH
# export ERL_LIBS=/usr/local/Cellar/yaws/1.92/lib/yaws
export ACKRC=".ackrc"

### ZSH configuration ====================================
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler rails brew gem ruby textmate)
source $ZSH/oh-my-zsh.sh

### config ================================================
cdpath=( "/Users/helixing/.go/src" "/Users/helixing/projects" "/Users/helixing/projects/work" "/Users/helixing/projects/myProject" "/Users/helixing/projects/opensources" "/Users/helixing/projects/test_projects" "/Users/helixing/projects/cocoa_iphone" "/Users/helixing/projects/cocoa_mac" "/Users/helixing/projects/cocoa_opensource" ~ )

[[ -s "$HOME/.rvm/scripts/rvm" ]] &&  . "$HOME/.rvm/scripts/rvm"

############################ ALIAS ####################################

alias mhost='sudo nano /etc/hosts'
alias ll='ls -l'
alias sss="subl -n ."
alias sb="subl"

# Rails related ==============
alias r='rails'
alias rt="ruby -Itest"
alias rs="r s"
alias rc="r c"

# bundle ======================
alias bi="bundle install"
alias be='bundle exec'
alias bo='export EDITOR=mate;bundle open'

# go project folder ==========
alias tst='cd /Users/helixing/projects/test_projects'
alias wk='cd /Users/helixing/projects/work'
alias my='cd /Users/helixing/projects/myProject'

# postgresql =================
alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop"

# proxy ==========

alias ppon="sudo networksetup -setsocksfirewallproxystate Wi-Fi on; sudo networksetup -setsocksfirewallproxystate Ethernet on"
alias ppoff="sudo networksetup -setsocksfirewallproxystate Wi-Fi off; sudo networksetup -setsocksfirewallproxystate Ethernet off"

# vagrant ==========
alias v="vagrant"
alias vst="vagrant status"
alias vup="vagrant up"
alias vpr="vagrant provision"
alias vhl="vagrant halt"
alias vre="vagrant reload"
alias vssh="vagrant ssh"
