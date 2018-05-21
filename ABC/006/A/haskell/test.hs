main :: IO ()
main = do
    n <- readLn
    putStrLn $ if n `mod` 3 == 0 then "YES" else "NO"
