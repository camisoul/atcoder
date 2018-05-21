solve :: Int -> String
solve n
    | n <= 59 = "Bad"
    | n <= 89 = "Good"
    | n <= 99 = "Great"
    | otherwise = "Perfect"

main :: IO ()
main = getLine >>= putStrLn . solve . read
