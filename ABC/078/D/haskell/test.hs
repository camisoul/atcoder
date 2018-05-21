import qualified Data.Vector.Unboxed as V
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, _, w] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    as <- V.fromList . map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ if n == 1
        then abs (w - V.head as)
        else max (abs (V.last as - V.last (V.init as))) (abs (w - V.last as))
