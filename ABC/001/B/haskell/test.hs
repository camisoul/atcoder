vv :: Int -> String
vv m
    | m < 100       = toStr 0
    | m <= 5000     = toStr $ m * 10 `div` 1000
    | m <= 30000    = toStr $ m `div` 1000 + 50
    | m <= 70000    = toStr $ (m `div` 1000 - 30) `div` 5 + 80
    | otherwise     = toStr 89
    where
        toStr x
            | x < 10    = "0" ++ show x
            | otherwise = show x

main :: IO ()
main = do
    m <- readLn
    putStrLn $ vv m
