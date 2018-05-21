{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}

import qualified Data.ByteString.Char8 as B

-- Data.Setによる比較は遅い
-- 7.10ではFlexibleContextsが必要

main :: IO ()
main = do
    s <- map B.head . B.group . B.sort <$> B.getLine
    putStrLn $ diff s ['a'..'z']
    where
        diff [] [] = "None"
        diff (_:_) [] = "None"
        diff [] (y:_) = [y]
        diff (x:xs) (y:ys)
            | x /= y = [y]
            | otherwise = diff xs ys

