main :: IO ()
main = do
    c <- last <$> getLine
    putStrLn $ if c == 'T' then "YES" else "NO"
