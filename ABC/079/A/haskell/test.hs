import Data.List

main :: IO ()
main = do
    n <- getLine
    putStrLn $ if any (>=3) $ map length (group n) then "Yes" else "No"
