import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, m] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ (n - 1) * (m - 1)
