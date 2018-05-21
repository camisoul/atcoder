main :: IO ()
main = do
    s <- getLine
    n <- readLn :: IO Int
    putStrLn $ [[x,y] | x <- s, y <- s] !! (n - 1)
