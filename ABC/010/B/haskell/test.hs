main :: IO ()
main = do
    _ <- readLn :: IO Int
    as <- map read . words <$> getLine
    -- 6で割った余りが0、2、4、5だと嫌い
    print $ foldl (\t i -> t + [3, 0, 1, 0, 1, 2] !! (i `mod` 6) :: Int) 0 as
