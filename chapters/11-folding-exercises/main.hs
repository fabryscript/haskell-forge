module Main where

crev :: [a] -> [a]
crev = foldl (flip (:)) []

prefixes :: [a] -> [[a]]
prefixes = foldr (\x acc -> [x] : map (x :) acc) []

main :: IO ()
main = do
  print (crev [1, 2, 3, 4]) -- Prints [4, 3, 2, 1]
  print (prefixes [1, 2, 3, 4]) -- Prints [[1],[1,2],[1,2,3],[1,2,3,4]]
