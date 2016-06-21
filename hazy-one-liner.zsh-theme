# User prompt: Red hash for root, $ for normal users
user_prompt() {
    if [ $UID -eq 0 ];  then
        printf '%s' '%{$fg_bold[red]%}#%{$reset_color%}'
    else
        printf '%s' '%{$fg_bold[white]%}>>%{$reset_color%}'
    fi
}

PROMPT="%{$fg_bold[yellow]%}%1~%{$reset_color%} $(user_prompt) "

# Set the LSCOLORS variable as well with this theme
export LSCOLORS="DxFxcaBdCxbGfababaDaDa"
