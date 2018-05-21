{-# LANGUAGE MultiWayIf #-}

main :: IO ()
main = do
    [a,b,c] <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if | c == a + b && c == a - b -> "?"
                  | c == a + b -> "+"
                  | c == a - b -> "-"
                  | otherwise  -> "!"
