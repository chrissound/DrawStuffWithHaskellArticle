#!/usr/bin/env bash

set -x
set -o
set -e
set -o nounset

if [! -f compiledArticle.md]
then
    touch compiledArticle.md
fi

rm images/*.png || true

index=0;

for commit in `git log --reverse --pretty=format:"%h" sections/`; do
    ((index++)) || true

    git checkout $commit Main.hs

    sectionFile=`git show --pretty=""  --name-only $commit sections/`

    cat $sectionFile >> compiledArticle.md
    php replaceToken.php compiledArticle.md $index $commit
done

