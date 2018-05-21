import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ if odd (a + b) then (a + b + 1) `div` 2 else (a + b) `div` 2
