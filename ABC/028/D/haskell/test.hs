import Text.Printf

main :: IO ()
main = do
    [n,k] <- map read . words <$> getLine :: IO [Double]
    putStrLn $ printf "%.9f" $ ((n - k) * (k - 1) * 6 + (n - 1) * 3 + 1) / n ** 3
