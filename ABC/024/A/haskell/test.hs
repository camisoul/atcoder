main :: IO ()
main = do
    [a,b,c,k] <- map read . words <$> getLine :: IO [Int]
    [s,t] <- map read . words <$> getLine :: IO [Int]
    let p = a * s + t * b
    if s + t >= k
        then print $ p - (s + t) * c
        else print p
