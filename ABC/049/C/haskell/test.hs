{-# LANGUAGE OverloadedStrings #-}

import Data.Maybe
import qualified Data.ByteString.Char8 as B

solve :: B.ByteString -> B.ByteString
solve xs = if null s then xs else solve (head s)
    where s = mapMaybe (`B.stripSuffix` xs) ["dream", "dreamer", "erase", "eraser"]

main :: IO ()
main = do
    s <- B.getLine
    putStrLn $ if B.null (solve s) then "YES" else "NO"
