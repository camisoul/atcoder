main :: IO ()
main = do
    n <- readLn :: IO Int
    print $ (n + 1) `div` 2
