# fish
## make abbr local to session
set -g fish_user_abbreviations
## RobotoMono nerd font
## wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete.ttf
set -g theme_nerd_fonts yes

# docker
alias dk 'docker'
alias dkk 'docker-compose'

# git
abbr  g 'git'
alias ga 'git add'
alias gcm 'git commit -m'
abbr  gco 'git checkout'
alias gd 'git diff'
alias gl "git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold
green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gs 'git status'
alias gu 'update_git_origin'

function update_git_origin
  set -lx CURBRANCH (git rev-parse --abbrev-ref HEAD)
  [ $CURBRANCH != "master" ]; and git checkout master
  git pull; git fetch --prune
  [ $CURBRANCH != "master" ]; and git checkout $CURBRANCH
end

# heroku
abbr h heroku
abbr hd 'env DEBUG=\* heroku'
abbr hpl 'heroku plugins:link'
abbr hpi 'heroku plugins:install'
abbr hpu 'heroku plugins:uninstall'
abbr y yarn
## heroku cli development
abbr nb './node_modules/.bin/'
abbr br './bin/run'
abbr brd 'env DEBUG=\* ./bin/run'
abbr brpl './bin/run plugins:link'
abbr brpi './bin/run plugins:install'
abbr brpu './bin/run plugins:uninstall'

# postgres
abbr pgbin '/Applications/Postgres.app/Contents/Versions/latest/bin/'
