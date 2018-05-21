import Control.Monad

between :: Int -> Int -> Int -> Bool
between x y z
    | x <= y = y <= z
    | otherwise = False

main :: IO ()
main = do
    [n,s,t] <- map read . words <$> getLine :: IO [Int]
    w <- readLn
    an <- replicateM (n - 1) readLn
    print $ length $ filter (\y -> between s y t) $ scanl (+) w an
