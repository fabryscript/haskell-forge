{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Avoid reverse" #-}

module Main where

import Data.List (sort)

-- (.) Operator

descSort :: (Ord a) => p -> [a] -> [a]
descSort x = reverse . sort -- Equivalent to:
-- descSort = (\x -> reverse (sort x))
-- descSort x = reverse (sort x)

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

-- ($) Operator

mapAndFilter :: (Num b, Ord b) => [b] -> [b]
mapAndFilter xs = map (+ 1) $ filter (> 1) xs -- Equivalent to:
-- f xs = map (+ 1) (filter (> 1) xs)

main = do
  print "Yo!"