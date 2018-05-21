import Data.Char

main :: IO ()
main = do
    n <- getLine
    putStrLn $ if read n `mod` foldl (\t s -> t + digitToInt s) 0 n == 0 then "Yes" else "No"
