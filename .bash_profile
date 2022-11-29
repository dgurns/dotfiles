
export BASH_SILENCE_DEPRECATION_WARNING=1

export GOPATH=/Users/dangurney/Desktop/Dev/go-dev
export GNPATH=/Users/dangurney/Desktop/Dev/go-dev/src/github.com/predictionhealth/predictionhealth
export GOARCH=arm64
export CGO_ENABLED=1

export AWS_PROFILE=ph

# Add bins for predictionhealth Go projects to PATH
export PATH="$GNPATH/phc/bin:$GNPATH/ph-worker/bin:$GNPATH/ph-server/bin:$PATH"

export PATH=/opt/homebrew/bin:/usr/local/sbin:$PATH
export PATH="/Users/dangurney/.deno/bin:$PATH"
export PATH=$GOPATH/bin:$(pyenv root)/shims:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/opt/mysql-client/bin:~/.bun/bin:$PATH

alias pip=pip3
alias brew-intel=/usr/local/bin/brew
alias brew=/opt/homebrew/bin/brew

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
alias Dev='cd /Users/dangurney/Desktop/Dev'
alias dotfiles='cd /Users/dangurney/Desktop/Dev/dotfiles'
alias prediction-health='cd /Users/dangurney/Desktop/Dev/go-dev/src/github.com/predictionhealth/predictionhealth'
alias ph-config='cd /Users/dangurney/Library/Application\ Support/predictionhealth'
alias trad-archive='cd /Users/dangurney/Desktop/Dev/trad-archive'

# Common terminal shortcuts
alias bashrc='code-insiders ~/.bashrc'
alias bash-profile='code-insiders ~/.bash_profile'
alias source-bash-profile='source ~/.bash_profile'

alias code='code-insiders'

alias ssh-config='code-insiders /etc/ssh/ssh_config'
alias ngrok-config='code-insiders ~/.ngrok2/ngrok.yml'

alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias c='clear'

alias start='yarn start'
alias dev='yarn dev'
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
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dangurney/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dangurney/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dangurney/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dangurney/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.poetry/bin:$PATH"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

