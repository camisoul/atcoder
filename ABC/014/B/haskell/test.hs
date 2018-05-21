import Data.Bits

price :: Int -> Int -> [Int] -> Int
price _ _ [] = 0
price n x (a:as)
    | testBit x n = a + price (n + 1) x as
    | otherwise   = price (n + 1) x as

main :: IO ()
main = do
    [_,x] <- map read . words <$> getLine :: IO [Int]
    as <- map read . words <$> getLine :: IO [Int]
    print $ price 0 x as
