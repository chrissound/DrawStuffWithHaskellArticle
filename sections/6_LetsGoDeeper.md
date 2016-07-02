## Lets go deeper

I've brought back the type annotations for readability.

Let's create a new data type.

Lets also create a new function that returns the central angle between two points of of a circle outline.

This function takes two parameters. Notice the interesting type signature. In Hanskell, the last type specified in the type signature specifies the return type and the rest are the parameters. If you're interested in the logic behind this you can investigate 'Haskell function currying'.

{{git Main.hs}}

