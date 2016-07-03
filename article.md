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

## Draw some more circle at particular points
New things we're using are 'where statements', which as far as I can tell is just syntatic sugar at this point. However a rather cool thing is we can reference other values within the expression without them being set(?) before. This rather amazing feature is thanks to Haskell`s lazy loading. Here is an example:
```
x = a+b where
    a = c+d
    b = c*3
    c = 5
    d = 4
```
The above will have x as the value 24 (c+d)+(c*3) = (5 + 4)+(5*3) = 24

We also need the help of `fromIntegral` to help us convert between numeric types. We're also using an anonymous function with the map.

We're also using `Translate` which is a data constructor, basically a function that constructs a data type, hence the reason it's capitalized (it's a requirement of Haskell syntax).