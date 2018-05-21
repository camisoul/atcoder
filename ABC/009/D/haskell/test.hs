{-# OPTIONS_GHC -fno-warn-type-defaults #-}

import Data.List
import Control.Monad
import System.Environment (getArgs)
import Text.Read (readMaybe)
import Data.Maybe (fromMaybe)
import System.Random (randomRIO)
import Data.Bits

func :: [Int] -> [Int] -> Int -> Int
func as cs 0 = 0
func as cs n
    | n < k = as !! (n - 1)
    | otherwise = a n
        where
            k = length as
            a nn = func as cs (n + k - nn)
            c nn = cs !! (n - k - 1 + nn - 1)

main :: IO ()
main = do
    let f = func [10,20,30] [7,19,13]
    print $ f 4
    
