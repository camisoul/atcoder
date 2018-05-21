main :: IO ()
main = do
    s <- getLine
    i <- readLn
    putStrLn [s !! (i - 1)]
