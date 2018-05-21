main :: IO ()
main = do
    [a,b] <- map read . words <$> getLine :: IO [Int]
    print $ (read :: String -> Int) (show a ++ show b) * 2
