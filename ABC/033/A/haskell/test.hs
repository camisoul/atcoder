main :: IO ()
main = do
    [a,b,c,d] <- getLine
    putStrLn $ if a == b && b == c && c == d then "SAME" else "DIFFERENT"
