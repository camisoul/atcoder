main :: IO ()
main = do
    [w,h] <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if h * 4 `mod` w == 0 then "4:3" else "16:9"
