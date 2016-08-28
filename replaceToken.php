<?php

list (,$compiledArticle, $index, $commit) = $argv;


$complied = file_get_contents($compiledArticle);

$complied = str_replace(
    "{{git Main.hs}}",
      "**Main.hs**" . PHP_EOL
    . "```haskell" . PHP_EOL
    . file_get_contents("Main.hs")
    . "```",
    $complied
);

$complied = str_replace(
    "{{git img.cabal}}",
      "**img.cabal**" . PHP_EOL
    . "```" . PHP_EOL
    . file_get_contents("img.cabal")
    . "```",
    $complied
);

if (strpos($complied, "{img}}") !== false) {
    $imgPath = "compile/images/$commit-$index.png";
    $compiledImgPath = "images/$commit-$index.png";

    exec(sprintf('./screenshot.sh %s', $imgPath));

    $complied = str_replace(
        "{{img}}",
        "![]($compiledImgPath)",
        $complied
    );
}

file_put_contents(
    $compiledArticle,
    $complied
);
