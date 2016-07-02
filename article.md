#Drawing stuff with Haskell

## Lets go!
Create the necessary cabal files. You could copy the below files or run through `cabal init`.

## {{git message}}

## Draw two circles
But how? With some googling about we find `pictures`.
Wtf is pictures?
Open the cabal REPL `cabl repl`:
```
import Graphics.Gloss
:t pictures
```

Output:
```
pictures :: [Picture] -> Picture
```

It takes an array (list?) of elements of type Picture and returns a single Picture.


## {{git message}}
Ohhhhhh. For some reason the parameter must be a Float (instead of Int).