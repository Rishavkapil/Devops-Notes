for branch in $(git branch | grep -v "main" | sed 's/^[ *]*//'); do
    git checkout main
    git merge --strategy=ours $branch -m "Merging $branch into main, keeping main's version"
done
