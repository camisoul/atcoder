import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

-- 使い回す数値は型指定したほうが速い
-- メモ化は高速化するがメモリ使用量が当然増える
-- Integer型でないと二乗したときに数値が落ちてしまう

mods :: Int
mods = 10 ^ (9 :: Int) + 7

modFact :: Int -> Int
modFact 0 = 1
modFact n = n * modFact (n - 1) `mod` mods

main :: IO ()
main = do
    [n, m] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let (x, y) = (min n m, max n m)
    print $ case y - x of
                0 -> (toInteger (modFact x) ^ (2 :: Integer) * 2) `mod` toInteger mods
                1 -> (toInteger (modFact x) ^ (2 :: Integer) * toInteger y) `mod` toInteger mods
                _ -> 0
