if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

source <(kubectl completion bash)
source <(helm completion bash)
complete -o default -F __start_kubectl k

# TODO: bashit, fzf
