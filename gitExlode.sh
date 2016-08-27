index=0;
for commit in `git log --pretty=format:"%h" $1`; do
    ((index++));
    git show $commit:$1 > $2/{$index}{$commit}-$1
done
