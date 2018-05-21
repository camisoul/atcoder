main :: IO ()
main = do
    n <- readLn :: IO Int
    as <- map read . words <$> getLine :: IO [Int]
    let (m,s) = sum as `divMod` n
    if s /= 0
        then print (-1)
        else print $ foldl (\t i -> if sum (take i as) == m * i then t else t + 1) 0 [1..n]
