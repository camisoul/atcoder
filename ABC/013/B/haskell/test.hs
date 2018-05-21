main :: IO ()
main = do
    [a,b] <- sequence [readLn, readLn] :: IO [Int]
    let c = abs (b - a)
    print $ min c (10 - c)
