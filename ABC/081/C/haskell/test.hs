import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [_, k] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let ss = sortOn length $ group $ sort as
    print $ length $ concat $ take (length ss - k) ss
