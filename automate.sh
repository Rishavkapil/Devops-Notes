for branch in $(git branch -r | grep -v '\->' | grep 'origin/' | sed 's/origin\///'); do
    git checkout --track origin/$branch;
done

