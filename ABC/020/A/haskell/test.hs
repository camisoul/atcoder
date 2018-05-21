main :: IO ()
main = do
    n <- readLn :: IO Int
    putStrLn $ case n of
                    1 -> "ABC"
                    2 -> "chokudai"
                    _ -> ""
