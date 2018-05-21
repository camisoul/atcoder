main :: IO ()
main = do
    [a,b,c] <- map read . words <$> getLine :: IO [Int]
    let m = 1000000007
    print $ a `mod` m * b `mod` m * c `mod` m
