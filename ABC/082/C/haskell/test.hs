import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.IntMap.Strict as IM

count :: [IM.Key] -> IM.IntMap Int
count [] = IM.empty
count (x:xs) = IM.insertWith (+) x 1 $ count xs

func :: Int -> Int -> Int -> Int
func k v t
    | k < v = t + v - k
    | k > v = t + v
    | otherwise = t

main :: IO ()
main = do
    _ <- getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ IM.foldrWithKey func 0 (count as)
