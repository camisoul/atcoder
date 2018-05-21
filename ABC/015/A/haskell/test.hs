main :: IO ()
main = do
    [a,b] <- sequence [getLine, getLine]
    putStrLn $ if length a > length b then a else b
