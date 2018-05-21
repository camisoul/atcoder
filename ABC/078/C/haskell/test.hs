import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, m] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ (1900 * m + 100 * (n - m)) * (2 ^ m)
