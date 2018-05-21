{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [r, g, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    B.putStrLn $ if (r * 100 + g * 10 + b) `mod` 4 == 0 then "YES" else "NO"
