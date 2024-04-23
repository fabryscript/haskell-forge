module CustomFilter where

cfilter :: (a -> Bool) -> [a] -> [a]
cfilter _ [] = []
cfilter f (x : xs)
  | f x = x : cfilter f xs
  | otherwise = cfilter f xs