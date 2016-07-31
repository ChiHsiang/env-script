function git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  branch=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')
}

git_branch

alias git_pull="git pull origin $branch"
alias git_push="git push origin $branch"
