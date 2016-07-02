module Main(main) where

import Graphics.Gloss

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

background :: Color
background = white

drawing :: Picture
drawing = pictures
    [
        circle 10
        , circle 20
        , circle 30
        , circle 40
        , circle 50
    ]

main :: IO ()
main = display window background drawing
