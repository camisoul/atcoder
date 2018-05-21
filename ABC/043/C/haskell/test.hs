cost :: [Int] -> Int -> Int
cost [] _ = 0
cost (x:xs) a = (x - a) ^ 2 + cost xs a

main :: IO ()
main = do
    _ <- readLn :: IO Int
    as <- map read . words <$> getLine :: IO [Int]
    print $ minimum $ map (cost as) [minimum as .. maximum as]
