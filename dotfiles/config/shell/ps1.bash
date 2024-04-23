git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)"
    local branch_truncated="${branch:0:30}"

    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo " (${branch})"
}
git_is_up_to_date() {
    local changes="$(git status --porcelain 2> /dev/null)"
    local color="green"
    if [[ ${#changes} -gt 5 ]] ; then
      local color="red"
    fi
    echo ${color}
}

PS1='\[\e[32m\][\w]\[\e[m\] '
PS2='> '
PS4='+ '
export PS1 PS2 PS4

# Enable prompt substitution
shopt -s promptvars

# Set right prompt with Git status
PROMPT_COMMAND='__git_ps1 "$(__git_is_up_to_date)"'
