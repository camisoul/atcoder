import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, t] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ max (x - t) 0
