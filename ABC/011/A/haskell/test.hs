main :: IO ()
main = do
    n <- readLn :: IO Int
    print $ case n `mod` 12 of
                0  -> 1
                _  -> n + 1
