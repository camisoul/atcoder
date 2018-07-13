import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

count :: Int -> Int -> Int
count 1 1 = 1
count 1 m = m - 2
count n 1 = n - 2
count n m = (n - 2) * (m - 2)

main :: IO ()
main = do
    [n,m] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ count n m
    
