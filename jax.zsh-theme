BACK="\ue0b2"
FORWARD="\ue0b0"
DISK="\uf0a0"

prompt_start() {
    print -P "%F{cyan}$BACK%K{cyan}%F{black}$DISK "
}

prompt_mid() {
    print -P "%K{blue}%F{cyan}$FORWARD %{$fg_bold[cyan]%}"
}

prompt_end() {
    print -P "%{$reset_color%F{blue}$FORWARD%f"
}

PROMPT=$(prompt_start)%n$(prompt_mid)%~/$(prompt_end)
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"