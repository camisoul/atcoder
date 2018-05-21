import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, y, z] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ (x - z) `div` (y + z)
