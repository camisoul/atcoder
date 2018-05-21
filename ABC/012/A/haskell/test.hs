main :: IO ()
main = do
    [a,b] <- words <$> getLine
    putStrLn $ b ++ " " ++ a
