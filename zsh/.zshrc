# Environment Variables
export EDITOR='vim'
export VISUAL='vim'
export XDG_CONFIG_HOME="$HOME/.config"

# Aliases
alias l='ls -la'
alias vim='nvim'
alias vi='nvim'
alias ls='gls --color=auto --group-directories-first'

# Prompt
export PS1="%(?.%F{blue}⏺.%F{red}⏺)%f %B%{%F{white}%}%1~%b %{%f%}%# %F{yellow}󰄾%f "
# export PS1="%(?.%F{4}⏺.%F{9}⏺)%f %{%F{39}%}%n%{%F{45}%}@%{%F{51}%}macOS %{%F{195}%}%2~ %{%f%}$ "

# Completion System
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

alias manpath=false # Workaround for slow terminal startup -- https://github.com/nvm-sh/nvm/issues/2747#issuecomment-1045703075
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# De-duplicate history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# golang
export GOPATH="$HOME/.golang"

# tmux-sessioniser
alias tmux-sessioniser="~/.dotfiles/bin/.local/scripts/tmux-sessioniser"
bindkey -s ^f "tmux-sessioniser\n"

export PATH="/Users/danwalsh/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/danwalsh/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
