main :: IO ()
main = do
    s <- getLine
    putStrLn $ unwords $ map (\c -> show . length $ filter (== c) s) "ABCDEF"
