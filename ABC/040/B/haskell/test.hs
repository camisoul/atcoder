solve :: Int -> Int
solve n = inner 1 n (maxBound :: Int)
    where
        inner i j m
            | n < i * i = m
            | j < i = inner (i + 1) (n `div` (i + 1)) m
            | otherwise = let t = (n - i * j) + (j - i)
                          in inner i (j - 1) (if t < m then t else m)

main :: IO ()
main = readLn >>= \s -> print $ solve s
