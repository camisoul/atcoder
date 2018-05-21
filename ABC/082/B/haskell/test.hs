import Data.List

main :: IO ()
main = do
    [s, t] <- lines <$> getContents
    putStrLn $ if sort s < sortBy (flip compare) t then "Yes" else "No"
