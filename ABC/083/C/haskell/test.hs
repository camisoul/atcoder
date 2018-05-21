import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, y] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ length $ takeWhile (<=y) $ iterate (*2) x
