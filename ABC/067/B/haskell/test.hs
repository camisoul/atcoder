import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [_, k] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    ls <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ sum $ take k $ sortBy (flip compare) ls
