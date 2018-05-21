main :: IO ()
main = do
    x <- readLn :: IO Int
    print $ (x + 1) * 5000
