solve :: String -> String
solve "a" = "-1"
solve _ = "a"

main :: IO ()
main = getLine >>= putStrLn . solve
