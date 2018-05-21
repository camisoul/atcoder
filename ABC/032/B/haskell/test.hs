import Data.List

main :: IO ()
main = do
    s <- getLine
    k <- readLn
    print $ length $ nub $ map (\c -> slice c (c + k) s) [0..(length s - k)]
    where
        slice f t = take (t - f) . drop f
