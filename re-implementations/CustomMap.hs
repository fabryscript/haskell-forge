{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use map" #-}
module CustomMap where

cmap :: (t -> a) -> [t] -> [a]
cmap f [] = []
cmap f (x : xs) = f x : cmap f xs