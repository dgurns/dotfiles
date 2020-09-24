export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export ANDROID_HOME=/Users/dangurney/Library/Android/sdk
export ANDROID_SDK_HOME=/Users/dangurney/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$PATH:$HOME/.composer/vendor/bin"
export GOPATH=/Users/dangurney/Desktop/DanStuff/Dev/PH-Dev
# export GNPATH=/Users/dangurney/Desktop/DanStuff/Dev/PH-Dev/src/github.com/___user___/___repo___

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[36m\]\$(parse_git_branch) \[\e[33m\]\W -> \[\e[00m\]"

# aliases
alias Desktop='cd /Users/dangurney/Desktop'
alias Downloads='cd /Users/dangurney/Downloads'
alias DanStuff='cd /Users/dangurney/Desktop/DanStuff'
alias Dev='cd /Users/dangurney/Desktop/DanStuff/Dev'
alias react='cd /Users/dangurney/Desktop/DanStuff/React'
alias udemy='cd /Users/dangurney/Desktop/DanStuff/Udemy'
alias gig-window='cd /Users/dangurney/Desktop/DanStuff/Dev/gig-window'
alias personal-site='cd /Users/dangurney/Sites/DanGurneyAppReact'

#Common terminal shortcuts
alias bashrc='code ~/.bashrc'
alias bash-profile='code ~/.bash_profile'

alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias c='clear'

alias ngrok='/Users/dangurney/Developer/ngrok'

alias start='yarn start'
alias build='yarn build'

# alias ph-compile='$GOPATH/bin/___setup___ compile all'
# alias ph-start='$GOPATH/bin/run-_____server____'

alias branch='git branch'
alias master='git checkout master'
alias develop='git checkout develop'
alias status='git status'
alias log='git log --oneline'
alias add='git add .'
alias push='git push'
alias pull='git pull'


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dangurney/.sdkman"
[[ -s "/Users/dangurney/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dangurney/.sdkman/bin/sdkman-init.sh"

