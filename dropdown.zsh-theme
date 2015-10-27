# Dropdown prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# User prompt: Red hash for root, $ for normal users
user_prompt() {
    if [ $UID -eq 0 ];  then
        printf '${fg_bold[red]}#${reset_color}'
    else
        printf '$'
    fi
}

PROMPT="$fg_bold[green]$fg[green]%n${reset_color}${fg[white]} @ ${reset_color}${fg_bold[cyan]}%1~${reset_color}
$(user_prompt) "
