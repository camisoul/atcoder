main :: IO ()
main = do
    [n,_] <- map read . words <$> getLine :: IO [Int]
    ds <- map head . words <$> getLine
    print $ head $ filter (\x -> not $ contain (show x) ds) [n..]
    where
        contain [] _ = False
        contain (x:xs) ss = (x `elem` ss) || contain xs ss
