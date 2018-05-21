main :: IO ()
main = do
    [a,b,c,d,e] <- map read . words <$> getLine :: IO [Int]
    print $ max (a + d + e) (b + c + e)
