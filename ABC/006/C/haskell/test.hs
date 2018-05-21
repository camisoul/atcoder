solve :: Int -> Int -> (Int, Int, Int)
solve n m
    | m < n * 2 = (-1, -1, -1)
    | n * 4 < m = (-1, -1, -1)
    | otherwise =
                let t = n * 4 - m   -- 全部赤ちゃんの場合にオーバーする足
                    a = t `div` 2   -- 大人で埋める
                    b = t `mod` 2   -- 足りない分を老人で埋める
                    c = n - a - b   -- 残りが赤ちゃん
                in (a, b, c)

main :: IO ()
main = do
    [n,m] <- map read . words <$> getLine
    let (a,b,c) = solve n m
    putStrLn $ show a ++ " " ++ show b ++ " " ++ show c
