choku :: String -> Bool
choku []   = True
choku ('c':'h':ss) = choku ss
choku ('o':ss)  = choku ss
choku ('k':ss)  = choku ss
choku ('u':ss)  = choku ss
choku _ = False

main :: IO ()
main = do
    s <- getLine
    putStrLn $ if choku s then "YES" else "NO"
