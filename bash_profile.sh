export EDITOR=vim

#Git
alias gs="git status";
alias gss="git status -s";
alias ga="git add";
alias go="git checkout";
alias gc="git commit";
alias gb="git branch";
alias gl="git log --pretty=format:'%C(cyan)%h%Creset %C(yellow)%ad %C(white)%<|(80,trunc)%s %Creset%Cgreen(%ar) %C(y    ellow dim)<%an>%Creset' --abbrev-commit --date=short"o

alias vscode="open -a Visual\ Studio\ Code"
alias grunt="./node_modules/.bin/grunt"
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ----------------------------
export PS1="\[\033[38;5;194m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;33m\]\W\[$(tput sgr0)\    ]\[\033[38;5;15m\]\[\033[38;5;229m\]\$(parse_git_branch)\[$(tput sgr0)\]: "

