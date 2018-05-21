key :: String -> Char -> String
key [] 'B' = []
key s 'B' = init s
key s c = s ++ [c]

main :: IO ()
main = do
    s <- getLine
    putStrLn $ foldl key "" s
