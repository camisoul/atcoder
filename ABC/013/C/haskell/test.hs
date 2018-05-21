import Control.Monad

solve :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int
solve n h a b c d e = minimum $ do
    x <- [0..n]
    let y = max 0 $ ((n - x) * e - h - b * x) `div` (d + e) + 1
    guard (x + y <= n)
    return $ x * a + y * c

main :: IO ()
main = do
    [n,h] <- map read . words <$> getLine
    [a,b,c,d,e] <- map read . words <$> getLine
    print $ solve n h a b c d e
