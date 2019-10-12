alias git_rebase_sign="git rebase --exec 'git commit --amend --no-edit -n -S'"
# checkout prev (older) revision
git_prev() {
    git checkout HEAD~
}

# checkout next (newer) commit
git_next() {
    BRANCH=`git show-ref | grep $(git show-ref -s -- HEAD) | sed 's|.*/\(.*\)|\1|' | grep -v HEAD | sort | uniq`
    HASH=`git rev-parse $BRANCH`
    PREV=`git rev-list --topo-order HEAD..$HASH | tail -1`
    git checkout $PREV
}

alias vimn="vim -c \":NERDTree\""
alias gti="git"
source ~/git-completion.bash

eval $(opam env)
alias ccat='pygmentize -g -O style=colorful,linenos=1'

PATH=~/bin:$PATH

# Solarize
source ~/.bashrc_solarize

USC="L-1D43-01.cse.sc.edu"
alias ss="cmatrix -s -C"
export xplane=/Users/justinbaum/Library/Application\ Support/Steam/steamapps/common/X-Plane\ 11/Output

export GOPATH=~/gopath
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:~/goplay
