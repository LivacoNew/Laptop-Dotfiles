# Some autoload stuff 
autoload -Uz compinit promptinit
compinit
promptinit

# Prompt 
PROMPT=" %B%F{13}%n%f%b%F{7}@%f%F{7}%m%f > "
RPROMPT="%~"

# Aliases
alias cfg="nvim ~/.config"
alias scr="nvim ~/.scripts"
alias icat="kitten icat"

# Fetcher 
echo
neofetch
alias clear="clear && echo && neofetch"
