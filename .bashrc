parse_git_branch() {
    branch=$(git branch --show-current 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " ($branch)"
    fi
}

PROMPT_COMMAND='exit_code=$?'
PS1='\[\e[1;32m\]\u\[\e[0m\]@\h \[\e[1;34m\]\W\[\e[0m\]\[\e[1;35m\]$(parse_git_branch)\[\e[0m\]$( [ $exit_code -ne 0 ] && printf " \[\e[1;31m\][%s]\[\e[0m\]" "$exit_code")> '

alias dots='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
