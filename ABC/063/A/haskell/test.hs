{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    c <- sum . map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    if c >= 10 then B.putStrLn "error" else print c
