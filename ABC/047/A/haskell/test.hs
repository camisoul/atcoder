main :: IO ()
main = do
    [a,b,c] <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if a + b == c || b + c == a || c + a == b then "Yes" else "No"
