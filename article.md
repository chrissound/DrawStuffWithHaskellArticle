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

## {{git message}}


## Type annotations are optional. Yes holy shit!

## Lets go deeper.
I've brought back the type annotations for readability. Let's create a new data type. Lets create a new function that returns an angle between two points of the outline of the circle and the center. This function takes two parameters. Notice the interesting type signature. Basically it returns the last type specified in the type signature and the rest is the parameters. If you're interested in the logic behind this you can read up about 'Haskell function currying'.
