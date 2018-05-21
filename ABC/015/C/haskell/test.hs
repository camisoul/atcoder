import Control.Monad
import Data.Bits

answer :: [Int] -> [[Int]] -> Int
answer [] _ = 0
answer _ [] = 0
answer [m] [t] = t !! (m - 1)
answer (m:ms) (t:ts) = (t !! (m - 1)) `xor` answer ms ts

solve :: Int -> Int -> [[Int]] -> String
-- 重複縦列は`replicateM n [1..k]`で作れる
solve n k ts = if 0 `elem` [answer ms ts | ms <- replicateM n [1..k]] then "Found" else "Nothing"

main :: IO ()
main = do
    [n,k] <- map read . words <$> getLine
    ts <- replicateM n $ map read . words <$> getLine
    putStrLn $ solve n k ts
