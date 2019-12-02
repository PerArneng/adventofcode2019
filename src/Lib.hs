module Lib
    ( someFunc
    ) where

import Data.List

calculateRequiredFuel :: Int -> Int
calculateRequiredFuel moduleMass = (round ((fromIntegral moduleMass) / 3.0)) - 2
        
readModuleMasses :: String -> IO [String]
readModuleMasses path =  
    (readFile path) >>= pure . lines

day1Part1 :: String -> IO Int
day1Part1 path =
    (readModuleMasses path) >>= map (read :: Int)