import Control.Monad

change :: [a] -> (Int, Int, a) -> [a]
change xs (l,r,t) =
    let left   = take (l - 1) xs
        middle = replicate (r - l + 1) t
        right  = drop r xs
    in left ++ middle ++ right

main :: IO ()
main = do
    [n, q] <- map read . words <$> getLine :: IO [Int]
    as <- replicateM q $ do
            [l,r,t] <- map read . words <$> getLine :: IO [Int]
            return (l,r,t)
    putStr $ unlines . map show $ foldl change (replicate n 0) as
