{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use sum" #-}

module Main where

-- With folding, we can reconstruct the sum function
csum :: (Foldable t, Num b) => t b -> b
csum = foldr (+) 0 -- Equivalent to:
-- csum = foldr (\x acc -> x + acc) 0

count :: (Foldable t, Eq a, Num b) => a -> t a -> b
count e = foldr (\x acc -> if x == e then acc + 1 else acc) 0

main :: IO ()
main = do
  print (csum [1, 2, 3, 4, 5]) -- Prints 15
  print (count 2 [1, 2, 2, 3, 4, 5]) -- Prints 2