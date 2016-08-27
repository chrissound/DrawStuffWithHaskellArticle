<?php

list (,$compiledArticle, $index, $commit) = $argv;


$complied = str_replace(
    "{{git Main.hs}}",
      "```haskell" . PHP_EOL
    . file_get_contents("Main.hs")
    . "```",
    file_get_contents($compiledArticle)
);

if (strpos($complied, "{img}}") !== false) {
    $imgPath = "images/$commit-$index.png";
    exec(sprintf('./screenshot.sh %s', $imgPath));
    $complied = str_replace(
        "{{img}}",
        "![]($imgPath)",
        $complied
    );
}

file_put_contents(
    $compiledArticle,
    $complied
);
