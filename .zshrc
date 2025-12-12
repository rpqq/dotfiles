# zshell Antigen plugin Manager

# Load Antigen
source ~/.config/.antigen/antigen.zsh

# Load various lib files  
antigen bundle robbyrussell/oh-my-zsh lib/

# Load a custom theme
antigen theme jackharrisonsherlock/common # changes prompt to '~ >'

# Load various lib files  
antigen bundle robbyrussell/oh-my-zsh lib/

# Bundles  
antigen bundle git #autocompletions
antigen bundle heroku #autocompletions
antigen bundle pip #autocompletions
antigen bundle lein #autocompletions
# antigen bundle thefuck # $fuck runs CLI suggestion from previous error
# eval $(thefuck --alias)
antigen bundle desyncr/auto-ls #autoruns $ls on cd!x
antigen bundle supercrabtree/k #make dir listings more readable
antigen bundle command-not-found #suggest packages to install if a command not found.
antigen bundle colored-man-pages #colored manual pages automatic
antigen bundle MichaelAquilina/zsh-you-should-use #suggests alias
antigen bundle zsh-users/zsh-completions #self-explanatory
antigen bundle zsh-users/zsh-autosuggestions #self-explanatory
antigen bundle zsh-users/zsh-syntax-highlighting #Syntax (command) highlighting bundle.

# Alias
#alias h="history"
alias py='python3'
alias bi='brew install'
alias o='open .' #current directory
alias nv='nvim'

##AutoJump j, jo, jc, jco, j in

# Zoxide - this is how you jump from dir without paths
# eval "$(zoxide init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# for tmux-sessionizer
# export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"


antigen apply

# load fzf key bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# bind ctrl+r to pop up
bindkey '^R' fzf-history-widget




