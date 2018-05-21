import Data.List

main :: IO ()
main = do
    _ <- readLn :: IO Int
    [a,b] <- map read . words <$> getLine :: IO [Int]
    k <- readLn
    ps <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if length (nub $ a : ps ++ [b]) == k + 2 then "YES" else "NO"
