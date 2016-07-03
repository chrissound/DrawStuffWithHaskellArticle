## Draw some more circle at particular points

Well I'm going to jump quite far now, and draw something a tiny bit more intricate.

New things we're using are 'where statements', which as far as I can tell is just syntatic sugar at this point.

Basically they allow us a rather cool way to reference other values within the expression without them being set(?) before. This rather amazing feature is thanks to Haskell`s lazy loading. Here is an example:
```
x = a+b where
    a = c+d
    b = c*3
    c = 5
    d = 4
```
The above will evaluate x as the value 24 (c+d)+(c*3) = (5 + 4)+(5*3) = 24

We also use the function `fromIntegral` to help us convert between numeric types. We're also using an anonymous function with the map.

We're also using function `Translate` which is a data constructor, basically a function that constructs a data type, hence the reason it's capitalized (it's a requirement of Haskell syntax).

We're also using pattern matching along with a deconstructor for the `PointCoordinate` data type, (to get the x and y values)

{{git Main.hs}}

{{img}}
