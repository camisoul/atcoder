main :: IO ()
main = do
    [h1,w1] <- words <$> getLine
    [h2,w2] <- words <$> getLine
    putStrLn $ if h1 == h2 || w1 == h2 || h1 == w2 || w1 == w2 then "YES" else "NO"
