#export "PHANTOMJS_BIN=`which phantomjs`"
set -x EDITOR vim
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
set -x NPM_PACKAGES "{$HOME}/.npm-packages"

#Git
alias gs="git status";
alias gss="git status -s";
alias ga="git add";
alias go="git checkout";
alias gc="git commit";
alias gb="git branch";
alias gd="git diff";
alias gds="git diff --staged";
alias gl="git log --pretty=format:'%C(cyan)%h%Creset %C(yellow)%ad %C(white)%<|(80,trunc)%s %Creset%Cgreen(%ar) %C(yellow dim)<%an>%Creset' --abbrev-commit --date=short"

alias vscode="open -a Visual\ Studio\ Code"

# GIT CONFIGS USED WITH DIFF-SO-PRETTY
######################################
# git config --global core.pager => diff-so-fancy | less --tabs=4 -RFX
# git config --global color.ui => true
# git config --global color.diff-highlight.oldNormal => red bold
# git config --global color.diff-highlight.oldHighlight => white bold 52
# git config --global color.diff-highlight.newNormal => green bold
# git config --global color.diff-highlight.newHighlight => white bold 22
# git config --global color.diff.meta    => yellow
# git config --global color.diff.frag    => magenta bold
# git config --global color.diff.commit  => yellow bold
# git config --global color.diff.old     => red bold
# git config --global color.diff.new     => green
# git config --global color.diff.whitespace => red reverse
# git config --bool --global diff-so-fancy.stripLeadingSymbols => false
