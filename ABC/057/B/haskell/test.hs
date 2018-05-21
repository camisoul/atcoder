import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.List

main :: IO ()
main = do
    [n, m] <- readInts
    xs <- replicateM n readInts
    ys <- replicateM m readInts
    forM_ [0..(n - 1)] $ \i -> do
        ts <- forM [0..(m - 1)] $ \j -> return $ man (xs !! i) (ys !! j)
        print $ minIndex ts + 1
    where
        readInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine :: IO [Int]
        man [x1,y1] [x2,y2] = abs (x1 - x2) + abs (y1 - y2)
        minIndex ss = fromJust $ elemIndex (minimum ss) ss
