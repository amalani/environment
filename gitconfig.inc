[core]
	excludesfile = /Users/abhishekm/.gitignore_global
	page = more
	pager = less -FRSX
# [difftool "sourcetree"]
#	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
#	path = 
# [mergetool "sourcetree"]
#	cmd = /Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
#	trustExitCode = true
[format]
    pretty = format:"%C(auto,red)%H %C(bold blue)<%an, %ae> \n%C(bold blue)%cd\n\n%w(0,4,4)%B"

[diff]
    tool = diffcode
[difftool "diffcode"]
    cmd = code --diff $LOCAL $REMOTE

[log]
    date = local

[alias]
    br = branch
    st = status
    co = checkout
    grepall = !git grep # root directory grep
    ec = !atom ~/.gitconfig # config --global -e # edit config file (open config file)
    cob = checkout -b # checkout branch <>
    cm = !git add -A && git commit -m # commit with message
    save = !git add -A && git commit -m 'SAVEPOINT'
    cma = !git commit --amend # amend commit
    # git co master, git fetch origin/master, git rebase origin/master, git co <branch>
    cmr = !git fetch origin master:master

    undocm = !git reset HEAD~ --soft # Undo the last commit but leave the changes
    
    # http://haacked.com/archive/2014/07/28/github-flow-aliases/
    # When I return to work, I’ll just use git undo which resets the previous commit, but keeps all the changes from that commit in the working directory.
    undoblah = reset HEAD~1 --mixed

    # if I merely need to modify the previous commit, I’ll use git amend
    amend = commit -a --amend
    lg = log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an, %ae>%Creset' --abbrev-commit --date=relative -n 20 
    lga = log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --abbrev-commit --date=relative -n 20 --author="Abhishek"

    epoch = !date +%s | pbcopy
