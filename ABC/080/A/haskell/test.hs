import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ min (a * n) b
