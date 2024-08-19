BACKGROUND_COLOR_ONE="cyan"
FOREFROUND_COLOR_ONE="black"
BACKGROUND_COLOR_TWO="blue"
FOREGROUND_COLOR_TWO="cyan"

BACK="\ue0b2"
FORWARD="\ue0b0"
DISK="\uf0a0"

prompt_start() {
    print -P "%F{$BACKGROUND_COLOR_ONE}$BACK%K{$BACKGROUND_COLOR_ONE}%F{$FOREGROUND_COLOR_ONE}$DISK "
}

prompt_mid() {
    print -P "%K{$BACKGROUND_COLOR_TWO}%F{$BACKGROUND_COLOR_ONE}$FORWARD %{$fg_bold[$FOREGROUND_COLOR_TWO]%}"
}

prompt_end() {
    print -P "%{$reset_color%F{$BACKGROUND_COLOR_TWO}$FORWARD%f"
}

PROMPT=$(prompt_start)%{%n%}$(prompt_mid)%{%~%}/$(prompt_end)
