import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ minimum [a + b, b + c, c + a]
