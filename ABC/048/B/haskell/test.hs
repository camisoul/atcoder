main :: IO ()
main = do
    [a,b,x] <- map read . words <$> getLine :: IO [Int]
    print $ b `div` x - (if a == 0 then -1 else (a - 1) `div` x)
