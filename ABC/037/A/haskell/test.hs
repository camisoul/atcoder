main :: IO ()
main = do
    [a,b,c] <- map read . words <$> getLine :: IO [Int]
    print $ if a <= b then solve a b c else solve b a c
    where
        solve a b c = c `div` a + (c `mod` a) `div` b
