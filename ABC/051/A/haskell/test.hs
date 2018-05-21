import Data.List.Split

main :: IO ()
main = do
    s <- getLine
    putStrLn $ unwords $ splitOn "," s
