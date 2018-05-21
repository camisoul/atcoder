import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c, d] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ max 0 (pred $ length $ [a..b] `intersect` [c..d])
