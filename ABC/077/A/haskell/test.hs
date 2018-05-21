main :: IO ()
main = do
    c <- lines <$> getContents
    putStrLn $ if reverse (map reverse c) == c then "YES" else "NO"
