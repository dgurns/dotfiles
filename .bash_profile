export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export GOPATH=/Users/dangurney/Desktop/DanStuff/Dev/PH-Dev
# export GNPATH=/Users/dangurney/Desktop/DanStuff/Dev/PH-Dev/src/github.com/___user___/___repo___

export BASH_SILENCE_DEPRECATION_WARNING=1

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
alias dotfiles='cd /Users/dangurney/Desktop/DanStuff/Dev/dotfiles'
alias react='cd /Users/dangurney/Desktop/DanStuff/React'
alias udemy='cd /Users/dangurney/Desktop/DanStuff/Udemy'
alias gig-window='cd /Users/dangurney/Desktop/DanStuff/Dev/gig-window'
alias personal-site='cd /Users/dangurney/Sites/DanGurneyAppReact'
alias trad-archive='cd /Users/dangurney/Desktop/DanStuff/Dev/trad-archive'

#Common terminal shortcuts
alias bashrc='code ~/.bashrc'
alias bash-profile='code ~/.bash_profile'
alias source-bash-profile='source ~/.bash_profile'

alias ssh-config='code /etc/ssh/ssh_config'
alias ngrok-config='code ~/.ngrok2/ngrok.yml'

alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias c='clear'

alias start='yarn start'
alias build='yarn build'

alias branch='git branch'
alias delete-branches='git branch | egrep -v "(^\*|master|develop|development|staging)" | xargs git branch -d'
alias delete-branches-force='git branch | egrep -v "(^\*|master|develop|development|staging)" | xargs git branch -D'
alias master='git checkout master'
alias develop='git checkout develop'
alias status='git status'
alias log='git log --oneline'
alias add='git add .'
alias push='git push -u origin HEAD'
alias pull='git pull origin $(git rev-parse --abbrev-ref HEAD)'
