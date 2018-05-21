main :: IO ()
main = do
    n <- readLn :: IO Int
    print $ n `div` 2 * if even n then n `div` 2 else n `div` 2 + 1
