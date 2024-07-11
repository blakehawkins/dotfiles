TERM=screen-256color
BASH_SILENCE_DEPRECATION_WARNING=1
HISTCONTROL=ignoreboth

rvm_prefix=/Users/blakeh

PATH=/opt/homebrew/opt/dotnet@6/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/opt/dotnet@6/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/opt/dotnet@6/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/share/dotnet:~/.dotnet/tools:/opt/homebrew/opt/dotnet@6/bin:/opt/homebrew/Caskroom/miniconda/base/bin:/opt/homebrew/Caskroom/miniconda/base/condabin:/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/Postgres.app/Contents/Versions/14/bin:/Applications/Postgres.app/Contents/Versions/14/bin:/Users/blakeh/.rvm/bin:/Applications/Postgres.app/Contents/Versions/14/bin/

PWD=/Users/blakeh/workspace/fresnograpestakeyard.github.io
DOTNET_ROOT=/opt/homebrew/opt/dotnet@6/libexec
CONDA_DEFAULT_ENV=base
INFOPATH=/opt/homebrew/share/info:/opt/homebrew/share/info:/opt/homebrew/share/info:/opt/homebrew/share/info:
HOMEBREW_CELLAR=/opt/homebrew/Cellar
COLORTERM=truecolor

alias gits='git'
alias resetdisplays='displayplacer  "id:3 res:1920x1080 hz:75 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0" "id:2 res:1920x1080 hz:75 color_depth:8 enabled:true scaling:off origin:(-1920,0) degree:0"'
alias resetdisplays2='displayplacer "id:2 res:1920x1080 hz:75 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0" "id:3 res:1920x1080 hz:75 color_depth:8 enabled:true scaling:off origin:(-1920,0) degree:0"'
alias tmux='tmux attach || tmux'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'

# export PS1="\$\?: $?\n\w${PS1_CMD1} \n\$ "
source ~/.git-prompt.sh
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
PS1='\\$?: $?\n\w${PS1_CMD1} \n\$ '

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh

shopt -s histappend
shopt -s checkwinsize

HISTSIZE=10000
HISTFILESIZE=20000

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

