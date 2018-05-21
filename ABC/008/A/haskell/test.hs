main :: IO ()
main = do
    [s,t] <- map read . words <$> getLine
    print $ t - s + 1
