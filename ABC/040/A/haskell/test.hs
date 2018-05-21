main :: IO ()
main = do
    [n,x] <- map read . words <$> getLine :: IO [Int]
    print $ if n `div` 2 >= x then x - 1 else n - x
