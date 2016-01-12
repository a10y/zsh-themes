# User prompt: Red hash for root, $ for normal users
user_prompt() {
    if [ $UID -eq 0 ];  then
        printf '%s' '%{$fg_bold[red]%}#%{$reset_color%}'
    else
        printf '>'
    fi
}

PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}%{$fg[white]%} @ %{$reset_color%}%{$fg_bold[cyan]%}%1~%{$reset_color%} $(user_prompt) "
