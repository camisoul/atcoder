import Data.List.Split

main :: IO ()
main = do
    s <- getLine
    print $ length $ filter (\c -> '0' `notElem` c) $ splitOn "+" s
