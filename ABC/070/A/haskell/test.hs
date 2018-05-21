{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    s <- B.getLine
    B.putStrLn $ if B.head s == B.last s then "Yes" else "No"
