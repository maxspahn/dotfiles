

setopt PROMPT_SUBST
export PROMPT='$(get_ros_ws)%F{blue}[$(whoami)@$ROBOT_NAME]%F{green}[-%2d]%f '
export RPROMPT='%F{$(git_is_up_to_date)}$(git_prompt)'

