import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as B

atob, btoa :: [Int] -> [Int] -> Int -> Int -> Int -> Int

atob [] _ _ _ n = n
atob _ [] _ _ n = n
atob as bs x y n = btoa as (dropWhile (\b -> b < head as + x) bs) x y n

btoa [] _ _ _ n = n
btoa _ [] _ _ n = n
btoa as bs x y n = atob (dropWhile (\a -> a < head bs + y) as) bs x y (n + 1)

readInts :: IO [Int]
readInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main :: IO ()
main = do
    [_,_] <- readInts
    [x,y] <- readInts
    as <- readInts
    bs <- readInts
    print $ atob as bs x y 0
