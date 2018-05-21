main :: IO ()
main = do
    [a,b,c,d] <- map read . words <$> getLine :: IO [Int]
    let g = gcd a c
    putStrLn $ case compare (d * a `div` g) (b * c `div` g) of
                    LT -> "TAKAHASHI"
                    EQ -> "DRAW"
                    GT -> "AOKI"
