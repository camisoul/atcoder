main :: IO ()
main = do
    [a,b,c] <- map read . words <$> getLine :: IO [Int]
    print $ (a * b + b * c + c * a) * 2
