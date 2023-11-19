alias glog='git log --oneline | head -n $1'
alias gb='git branch'
alias gcb='git checkout -b $1'
alias gc='git checkout $1'
alias gp='git push origin head'
alias gpr='git pull origin --rebase'
alias gcommit='git add . && git commit -m $1'

# gm2 merge current branch to targe branch
function gm2() {
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    target_branch="$1"
    git checkout "$target_branch" 
    git pull origin "$target_branch" --rebase
    git merge "$current_branch"
    echo "merge $current_branch to $target_branch"
    
}

# gpush git pull --rebase then push
function gpullpush() {
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    git pull origin "$current_branch" --rebase && git push
}