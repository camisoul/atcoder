{-# LANGUAGE ParallelListComp #-}

isSame :: Char -> Char -> Bool
isSame c1 '@' = c1 `elem` "atcoder@"
isSame '@' c2 = isSame c2 '@'
isSame c1  c2 = c1 == c2

main :: IO ()
main = do
    [s1, s2] <- sequence [getLine, getLine]
    putStrLn $ if and $ [isSame x y | x <- s1 | y <- s2]
        then "You can win" else "You will lose"
