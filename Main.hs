module Main(main) where

import Graphics.Gloss

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

background :: Color
background = white

getCircle :: Float -> Picture
getCircle size = circle size

getCircles :: Int -> [Picture]
getCircles count = map getCircle (take count [10,20..])

drawing :: Picture
drawing = pictures (getCircles 5)

main :: IO ()
main = display window background drawing
