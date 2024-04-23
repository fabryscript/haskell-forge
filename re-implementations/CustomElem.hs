module CustomElem where

celem :: (Eq a) => a -> [a] -> Bool
celem _ [] = False
celem el (x : xs)
  | el == x = True
  | otherwise = celem el xs
