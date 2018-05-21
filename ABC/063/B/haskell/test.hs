import Data.List (nub)

main :: IO ()
main = do
    s <- getLine
    putStrLn $ if length (nub s) == length s then "yes" else "no"
