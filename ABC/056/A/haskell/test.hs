main :: IO ()
main = do
    [a,_,b] <- getLine
    putStrLn $ if a == b then "H" else "D"
