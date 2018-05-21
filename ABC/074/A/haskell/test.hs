import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, a] <- map (fst . fromJust . B.readInt) . B.words <$> B.getContents
    print $ n * n - a
