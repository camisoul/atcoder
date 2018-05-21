main :: IO ()
main = do
    s <- getLine
    putStrLn $ if solve s then "YES" else "NO"
    where
        solve "5 5 7" = True
        solve "5 7 5" = True
        solve "7 5 5" = True
        solve _ = False
