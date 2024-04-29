module LeapYear (isLeapYear) where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy n factor = (n `mod` factor) == 0

isLeapYear :: Integer -> Bool
isLeapYear year = year `divisibleBy` 4 && (not (year `divisibleBy` 100) || year `divisibleBy` 400)
