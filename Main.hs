module Main(main) where

import Graphics.Gloss

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

background :: Color
background = white

getCircle :: Float -> Picture
getCircle size = circle size

get5Circles :: [Picture]
get5Circles = map getCircle [10,20..50]

drawing :: Picture
drawing = pictures get5Circles

main :: IO ()
main = display window background drawing
