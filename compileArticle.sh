#!/usr/bin/env bash

set -x
set -o
set -e
set -o nounset

rm compiledArticle.md || true
rm images/*.png || true
rm -rf compile || true

touch compiledArticle.md

mkdir compile
mkdir compile/images

index=0;

for commit in `git log --reverse --pretty=format:"%h" sections/`; do
    ((index++)) || true

    git checkout $commit Main.hs || true
    git checkout $commit img.hs || true

    sectionFile=`git show --pretty=""  --name-only $commit sections/`

    cat $sectionFile >> compiledArticle.md
    echo "" >> compiledArticle.md
    php replaceToken.php compiledArticle.md $index $commit
done

cd compile
pandoc -s ../compiledArticle.md -o $1
