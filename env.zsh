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
alias dl="cd ~/Downloads"

if [[ -s "${ZDOTDIR:-$HOME}/Abhishek/github/work/environment/env.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/Abhishek/github/work/environment/env.zsh"
fi


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

# MacOS Version based commands
os_type=$(uname -s)

if [[ "$os_type" == "Darwin" ]]; then
    # Get the macOS version
    macos_version=$(sw_vers -productVersion | awk -F '.' '{print $1}')
    
    if [[ "$macos_version" == "15" ]]; then
        # Using ssh-add_wf seems useless and slow for each key but ssh-add -A is noisy. Try to use mixed approach for first run per restart
        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519_dbx_github" ]]; then
            # work laptop
            ssh-add_wf | grep -q ~/.ssh/id_ed25519_dbx_github || ssh-add --apple-load-keychain
        fi

        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519" ]]; then
            ssh-add_wf | grep -q ~/.ssh/id_ed25519 || ssh-add --apple-load-keychain
        fi

        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/github_rsa" ]]; then
            ssh-add_wf | grep -q ~/.ssh/github_rsa || ssh-add --apple-load-keychain
        fi
    else
        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519_dbx_github" ]]; then
            # work laptop
            ssh-add_wf | grep -q ~/.ssh/id_ed25519_dbx_github || ssh-add -A
        fi

        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519" ]]; then
            ssh-add_wf | grep -q ~/.ssh/id_ed25519 || ssh-add -A
        fi

        if [[ -s "${ZDOTDIR:-$HOME}/.ssh/github_rsa" ]]; then
            ssh-add_wf | grep -q ~/.ssh/github_rsa || ssh-add -A
        fi
    fi
else
    echo "This is not macOS."
fi


# elif [[ "$macos_version" == "15" ]]; then
#     echo "Running commands for macOS 15..."
#     # Place commands for macOS 15 here



# # Using ssh-add_wf seems useless and slow for each key but ssh-add -A is noisy. Try to use mixed approach for first run per restart
# if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519" ]]; then
#     # work laptop
#     ssh-add_wf | grep -q ~/.ssh/id_ed25519 || ssh-add -apple-load-keychain
# else
#     # personal laptop
#     ssh-add_wf | grep -q ~/.ssh/github_rsa || ssh-add -apple-load-keychain
# fi

# # Using ssh-add_wf seems useless and slow for each key but ssh-add -A is noisy. Try to use mixed approach for first run per restart
# if [[ -s "${ZDOTDIR:-$HOME}/.ssh/id_ed25519_dbx_github" ]]; then
#     # work laptop
#     ssh-add_wf | grep -q ~/.ssh/id_ed25519_dbx_github || ssh-add -apple-load-keychain
# fi
# else
#     # personal laptop
#     ssh-add_wf | grep -q ~/.ssh/github_rsa || ssh-add -apple-load-keychain
# fi


# https://coderwall.com/p/pb1uzq/z-shell-colors
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=245"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# source ~/.bashrc
autoload -U compinit && compinit
eval "$(register-python-argcomplete pipx)"

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
