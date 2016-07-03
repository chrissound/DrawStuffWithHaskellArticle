module Main(main) where

import Graphics.Gloss

data PointCoordinate = PointCoordinate Float Float deriving Show

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

background :: Color
background = white

getCircle :: Float -> Picture
getCircle size = circle size

getAngle :: Integer -> Integer -> Float
getAngle pointIndex pointCount = 2 * pi * (fromInteger pointIndex / fromInteger pointCount)

getCirclePoint :: Float -> Float -> PointCoordinate
getCirclePoint radius angle = PointCoordinate
    (radius * sin(angle))
    (radius * cos(angle))

getTranslatedCircle :: Integer -> Integer -> Picture
getTranslatedCircle index indexCount = Translate x y (getCircle unitLength)
    where (PointCoordinate x y) = getCirclePoint radius (getAngle index indexCount)
          radius = unitLength + (unitLength * ((fromIntegral index) / (fromIntegral indexCount)))
          unitLength = 30


drawing :: Picture
drawing = pictures (map (\pointIndex -> getTranslatedCircle pointIndex pointCount) [1..pointCount])
    where pointCount = 10

main :: IO ()
main = display window background drawing
