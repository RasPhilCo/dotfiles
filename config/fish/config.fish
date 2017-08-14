## make abbr local to session
set -g fish_user_abbreviations

# nerdfonts from brew cask
set -g theme_nerd_fonts yes

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
abbr hd 'env HEROKU_DEBUG=1 heroku'
abbr hpl 'heroku plugins:link'
abbr hpi 'heroku plugins:install'
abbr hpu 'heroku plugins:uninstall'
abbr y yarn

# cli-engine development
abbr nb './node_modules/.bin/'
abbr br './bin/run'
abbr brd 'env HEROKU_DEBUG=1 ./bin/run'
abbr brpl './bin/run plugins:link'
abbr brpi './bin/run plugins:install'
abbr brpu './bin/run plugins:uninstall'

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# nvm/node
function nvm
  bass source (brew --prefix nvm)/nvm.sh ';' nvm $argv
end
