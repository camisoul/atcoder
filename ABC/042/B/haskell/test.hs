import Data.List

main :: IO ()
main = do
    _ <- getLine
    ss <- lines <$> getContents
    putStrLn $ concat $ sort ss
