import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

-- Vectorのほうが低速だった

main :: IO ()
main = do
    [n, t] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    ts <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ n * t - sum (map (\x -> max (t - x) 0) $ zipWith subtract ts (tail ts))
