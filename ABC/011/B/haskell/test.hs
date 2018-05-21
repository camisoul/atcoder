import Data.Char

main :: IO ()
main = do
    (s:ss) <- getLine
    putStrLn $ toUpper s : map toLower ss
