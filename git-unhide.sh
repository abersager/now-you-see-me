if [ "$#" -ne 1 ]
then
  echo "Usage: $0 <directory>"
  exit 1
fi

git ls-files "$1" | xargs -L1 git update-index --no-skip-worktree
git add -f "$1"
