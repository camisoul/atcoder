import Data.List

solve :: String -> String -> Int -> String
solve [] _ _ = []
solve str _ 0 = str
solve str sstr k = solve' str (nub sstr) sstr k
    where
        solve' [] _ _ _ = []
        solve' _ [] _ _ = []
        solve' (s:ss) (c:cs) s1 k1 =
            let s2 = c `delete` s1
                k2 = if s == c then k1 else k1 - 1
                diff = length $ ss \\ s2
            in if diff <= k2
                then c : solve ss s2 k2
                else solve' (s:ss) cs s1 k1

main :: IO ()
main = do
    [_,k] <- map read . words <$> getLine :: IO [Int]
    s <- getLine
    putStrLn $ solve s (sort s) k
