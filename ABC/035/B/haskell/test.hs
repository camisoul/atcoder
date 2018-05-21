count :: Eq a => a -> [a] -> Int
count c s = length $ filter (== c) s

main :: IO ()
main = do
    s <- getLine
    t <- readLn :: IO Int
    let x = count 'D' s - count 'U' s
        y = count 'R' s - count 'L' s
        q = count '?' s
        d = abs x + abs y
    print $ case t of
                1 -> d + q
                2 -> max (abs (d - q) `mod` 2) (d - q)
                _ -> 0
