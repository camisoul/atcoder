import Control.Monad

ok :: Int -> Int -> Int -> Int -> Int -> Bool
ok n ng1 ng2 ng3 q = n /= ng1 && n /= ng2 && n /= ng3 && q <= 100

canClear :: Int -> Int -> Int -> Int -> Int ->  Bool
canClear n _ _ _ _ | n <= 0 = True
canClear n ng1 ng2 ng3 q
    | not $ ok n ng1 ng2 ng3 q = False
    | ok (n - 3) ng1 ng2 ng3 (q + 1) = canClear (n - 3) ng1 ng2 ng3 (q + 1)
    | ok (n - 2) ng1 ng2 ng3 (q + 1) = canClear (n - 2) ng1 ng2 ng3 (q + 1)
    | ok (n - 1) ng1 ng2 ng3 (q + 1) = canClear (n - 1) ng1 ng2 ng3 (q + 1)
    | otherwise                 = False


main :: IO ()
main = do
    n <- readLn :: IO Int
    [ng1,ng2,ng3] <- replicateM 3 readLn :: IO [Int]
    putStrLn $ if canClear n ng1 ng2 ng3 0 then "YES" else "NO"
