{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, w] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    B.putStrLn $ B.replicate (w + 2) '#'
    replicateM_ n $ do
        s <- B.getLine
        B.putStr "#"
        B.putStr s
        B.putStrLn "#"
    B.putStrLn $ B.replicate (w + 2) '#'
