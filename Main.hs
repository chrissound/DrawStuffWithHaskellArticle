module Main(main) where

import Graphics.Gloss

window = InWindow "Nice Window" (200, 200) (10, 10)

background = white

getCircle size = circle size

getCircles count = map getCircle (take count [10,20..])

drawing = pictures (getCircles 5)

main = display window background drawing
