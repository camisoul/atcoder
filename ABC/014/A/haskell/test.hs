main :: IO ()
main = do
    [a,b] <- sequence [readLn, readLn] :: IO [Int]
    print $ (a + b - 1) `div` b * b - a
