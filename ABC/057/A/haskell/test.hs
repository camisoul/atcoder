import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print ((a + b) `mod` 24)
