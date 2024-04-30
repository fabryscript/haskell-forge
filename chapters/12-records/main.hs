module Main where

data Person = Person
  { name :: String,
    age :: Int
  }

greet :: Person -> String
greet person = "Hi " ++ name person

fabry :: Person
fabry = Person {name = "Fabry", age = 19}

main :: IO ()
main = do
  print (greet fabry)