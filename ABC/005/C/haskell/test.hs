sell :: Int -> [Int] -> [Int] -> Bool
sell _ _ [] = True
sell t (a:as) (b:bs)
    | b < a = False
    | b - a <= t = sell t as bs
    | otherwise = sell t as (b:bs)
sell _ [] _ = False

main :: IO ()
main = do
    t <- readLn
    _ <- readLn :: IO Int
    as <- map read . words <$> getLine
    _ <- readLn :: IO Int
    bs <- map read . words <$> getLine
    putStrLn $ if sell t as bs then "yes" else "no"
