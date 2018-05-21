main :: IO ()
main = do
    [a,d] <- map read . words <$> getLine :: IO [Int]
    let x = (a + 1) * d
        y = a * (d + 1)
    print $ if x >= y then x else y
