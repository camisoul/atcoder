import Control.Monad
import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

train :: Int -> [Int] -> Int
train start [c, s, f]
    | s > start = s + c
    | (start - s) `mod` f == 0 = start + c
    | otherwise = start + f - start `mod` f + c
train _ _ = 0

time :: [[Int]] -> Int
time [] = 0
time xs = foldl train (head xs !! 1) xs

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    ts <- replicateM (n - 1) $ map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStr $ unlines $ map (show . time) (tails ts)
