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

setopt PROMPT_SUBST
export PROMPT='%F{blue}[$(whoami)@$ROBOT_NAME]%F{green}[-%2d]%f '
export RPROMPT='%F{$(git_is_up_to_date)}$(git_prompt)'
