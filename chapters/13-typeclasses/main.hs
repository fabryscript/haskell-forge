module Main where

data Temperature = C Float | F Float

instance Eq Temperature where
  (==) :: Temperature -> Temperature -> Bool
  (==) (C n) (C m) = n == m
  (==) (F n) (F m) = n == m
  (==) (C c) (F f) = (1.8 * c + 32) == f
  (==) (F f) (C c) = (1.8 * c + 32) == f

main :: IO ()
main = do
  print ""
