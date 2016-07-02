## Draw five circles
But how? With some googling about I find `pictures`.

Wtf is pictures?
Open the cabal REPL `cabl repl` and get the type info about it:
```
import Graphics.Gloss
:t pictures
```

Output:
```
pictures :: [Picture] -> Picture
```

So it takes an array (list?) of elements of type `Picture` and returns a single `Picture`.

{{git Main.hs}}

{{img}}
