{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use even" #-}
import CustomElem (celem)
import CustomFilter (cfilter)
import CustomMap (cmap)
import CustomNub (cnub)

main :: IO ()
main = do
  -- celem
  print (celem 2 [1, 2, 3, 4, 5]) -- Prints True
  print (celem 12 [1, 2, 3, 4, 5]) -- Prints False
  -- cnub
  print (cnub [1, 2, 3, 3, 3, 4, 4, 5]) -- Prints [1, 2, 3, 4, 5]

  -- cmap
  print (cmap (* 2) [1, 2, 3, 4, 5]) -- Prints [2, 4, 6, 8, 10]

  -- cfilter
  print (cfilter even [1, 2, 3, 4, 5]) -- Prints [2, 4]
  -- OR
  print (cfilter (\x -> x `mod` 2 == 0) [1, 2, 3, 4, 5]) -- Prints [2, 4]