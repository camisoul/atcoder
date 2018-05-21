import qualified Data.ByteString.Char8 as C
import qualified Data.IntSet as S
import Data.Maybe (fromJust)

-- 100/100

iterateDiv2 :: Int -> Int
iterateDiv2 x
    | odd x     = x
    | otherwise = iterateDiv2 (x `div` 2)

divAll :: S.IntSet -> S.IntSet
divAll xs
    | xs == ys  = xs
    | otherwise = divAll ys
    where
        ys = S.map iterateDiv2 xs

solve :: S.IntSet -> Int
solve xs = S.size $ divAll xs

main :: IO ()
main = do
    _ <- getLine
    as <- map (fst . fromJust . C.readInt) . C.words <$> C.getLine :: IO [Int]
    print $ solve (S.fromList as)
