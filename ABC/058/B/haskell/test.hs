solve :: [a] -> [a] -> [a]
solve [] _ = []
solve xs [] = xs
solve (x:xs) (y:ys) = x : y : solve xs ys

main :: IO ()
main = do
    o <- getLine
    e <- getLine
    putStrLn $ solve o e
