for branch in $(git branch -r | grep -v '\->'); do
  git checkout --track $branch
  git pull
done

