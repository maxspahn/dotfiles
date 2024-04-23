# Set completion styles
complete -o default -o nospace -F _extensions -X '!*.@(png|jpg|gif|jpeg|bmp)'
complete -o default -o nospace -F _complete
complete -o default -o nospace -F _approximate

# Set menu select for completion
bind '"\C-i": menu-complete'

# Set completion format
export COMP_LINE_COMP=(('%F{green}-- %d --%f'))
export COMP_CORRECT=(('%F{yellow}!- %d (errors: %e) -!%f'))
export COMP_GROUP=''
export COMP_IGNORE_PATTERN='*__pycache__'

# Enable completion initialization
if [ -n "$BASH_VERSION" ]; then
    autoload -U +X compinit && compinit
fi

