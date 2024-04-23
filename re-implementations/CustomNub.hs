module CustomNub where

import CustomElem

cnub :: (Eq a) => [a] -> [a]
cnub [] = []
cnub (x : xs)
  | x `celem` xs = cnub xs
  | otherwise = x : cnub xs