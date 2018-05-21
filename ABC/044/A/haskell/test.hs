main :: IO ()
main = do
    n <- readLn :: IO Int
    k <- readLn :: IO Int
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    if n > k
        then print $ x * k + y * (n - k)
        else print $ x * n
