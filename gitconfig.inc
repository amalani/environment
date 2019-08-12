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
#    date=format:%Y-%m-%d %H:%M:%S

[fetch]
prune = true

[alias]
    br = branch
    st = status
    co = checkout
    grepall = !git grep # root directory grep
    ec = !$EDITOR ~/.gitconfig # config --global -e # edit config file (open config file)
    cob = checkout -b # checkout branch <>
    cm = !git add -A && git commit -m # commit with message
    save = !git add -A && git commit -m 'SAVEPOINT'
    cma = !git commit --amend # amend commit
    # git co master, git fetch origin/master, git rebase origin/master, git co <branch>
    cmr = !git fetch origin master:master
    opene = !code $(git status --porcelain --short | awk '{print $2}')
    undocm = !git reset HEAD~ --soft # Undo the last commit but leave the changes
    
    # http://haacked.com/archive/2014/07/28/github-flow-aliases/
    # When I return to work, I’ll just use git undo which resets the previous commit, but keeps all the changes from that commit in the working directory.
    undoblah = reset HEAD~1 --mixed

    # if I merely need to modify the previous commit, I’ll use git amend
    amend = commit -a --amend
    lg = log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %C(bold blue)<%an, %ae>%Creset%Cgreen(%cd)' --abbrev-commit -n 20 --date=local 
    lga = log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s%Cgreen(%cd)' --abbrev-commit -n 20 --author="Abhishek" --date=local

    epoch = !date +%s | pbcopy

    # https://stackoverflow.com/questions/20808892/git-diff-between-current-branch-and-master-but-not-including-unmerged-master-com
    dm = !git diff master...

    ir = !git rebase -i origin/master
    # Once your branch is several commits deep, you will often want to check what it looks like when compared to the revision at which you branched off of master:
    diff-vs-master = !git diff "$@" $(git merge-base HEAD origin/master) -- .


    # A quick summary showing one commit per line
    # l = log -10 --graph --pretty=oneline --abbrev-commit --decorate=short

    # shows date, author, hash, summary in a compact format
    l = log -10 --format='%C(magenta)%cd%Creset %Cblue%<(15,trunc)%ae%Creset %C(yellow)%h%Creset %s' --date=short
    la = log --format='%C(magenta)%cd%Creset %Cblue%<(15,trunc)%ae%Creset %C(yellow)%h%Creset %s' --date=short

    # branch
    brm = branch -m
    brv = branch -vv   # like "ls -l"
    cpb = "! cpb() { if [[ $2 ]]; then git branch -t $2 $1; else git branch -t $1; fi; }; cpb"

    # unstage file
    unstage = reset HEAD --