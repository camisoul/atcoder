main :: IO ()
main = do
    [a, b, c] <- words <$> getLine
    putStrLn $ if siri a b && siri b c then "YES" else "NO"
    where
        siri x y = last x == head y
