# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Misc
alias ofd='open $PWD'export PATH=/opt/dropbox-override/bin:$PATH
alias pc='/usr/local/bin/charm'
alias epoch='date +%s | pbcopy'

# Exa
alias ll='exa --long'
alias db="cd ~/src/server"


export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/node_modules/bin:$PATH"

# For git-remote-drobpox
# export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# https://stackoverflow.com/questions/764600/how-can-you-export-your-bashrc-to-zshrc
# [[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# https://unix.stackexchange.com/questions/58969/how-to-list-keys-added-to-ssh-agent-with-ssh-add
function ssh-add_wf ()
{
    while read -r line; do
        for file in ~/.ssh/*.pub;
        do
            printf "%s %s\n" "$(ssh-keygen -lf "$file" | awk '{$1=""}1')" "$file";
        done | column -t | grep --color=auto "$line" || echo "$line";
    done < <(ssh-add -l | awk '{print $2}')
}

# Using ssh-add_wf seems useless and slow for each key but ssh-add -A is noisy. Try to use mixed approach for first run per restart
if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519" ]]; then
    # work laptop
    ssh-add_wf | grep -q ~/.ssh/id_ed25519 || ssh-add -A
else
    # personal laptop
    ssh-add_wf | grep -q ~/.ssh/github_rsa || ssh-add -A
fi

# https://coderwall.com/p/pb1uzq/z-shell-colors
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=245"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## colors
# function clicolors() {
#     i=1
#     for color in {000..255}; do;
#         c=$c"$FG[$color]$color✔$reset_color  ";
#         if [ `expr $i % 8` -eq 0 ]; then
#             c=$c"\n"
#         fi
#         i=`expr $i + 1`
#     done;
#     echo $c | sed 's/%//g' | sed 's/{//g' | sed 's/}//g' | sed '$s/..$//';
#     c=''
# }
