import Data.List

main :: IO ()
main = do
    w <- getLine
    putStrLn $ if all even $ map length $ group $ sort w
               then "Yes" else "No"

