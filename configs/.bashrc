
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# ll alias.
alias  ll='ls -latr'
alias lll='ll'
alias   l='ll'

# Documents alias.
alias cdworkspace='cd /c/Users/bdh/Documents/'

# Agent.
SSH_AUTH_SOCK_FILE=/tmp/SSH_AUTH_SOCK.sh
if [ ! -e $SSH_AUTH_SOCK_FILE ]; then
    # need to find SSH_AUTH_SOCK again.
    # restarting is an easy option
    ps aux | grep ssh-agent | cut -d' ' -f7 | xargs kill -9
fi
if [ "x$SSH_AGENT_PID" == "x" ]; then
    eval $(ssh-agent -s) > /dev/null
    rm -f $SSH_AUTH_SOCK_FILE
    echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > $SSH_AUTH_SOCK_FILE
fi
source $SSH_AUTH_SOCK_FILE

ssh-add ~/.ssh/blakehawkins_github_rsa 2> /dev/null
ssh-add ~/.ssh/bdh_gitlab 2> /dev/null

# Show timestamps in history.
export HISTTIMEFORMAT='%F %T '

# texlive in PATH.
PATH=/c/texlive/2016/bin/win32:$PATH

# rustup in PATH.
PATH=/c/Users/bdh/.cargo/bin:$PATH

# stack in PATH.
PATH=/c/Users/bdh/AppData/Roaming/local/bin:$PATH

# npm in PATH.
PATH="/c/Program Files/nodejs/":$PATH

# Node modules.
PATH="/c/Users/bdh/AppData/Roaming/npm/":$PATH
PATH="/usr/lib/node_modules":$PATH

# Gems.
PATH="~/.gem/ruby/2.3.0/bin":$PATH

# Splunk.
alias splunk="/opt/splunk/bin/splunk"

