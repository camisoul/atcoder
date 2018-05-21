import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Unboxed as V

main :: IO ()
main = do
    [_,k] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let xv = V.fromList as
        ls = V.scanl (+) 0 xv
    print $ V.sum $ V.zipWith (-) (V.drop k ls) ls
