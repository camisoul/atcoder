import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [w,a,b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ max (abs (a - b) - w) 0
