import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    as <- map (fst . fromJust . B.readInt) . B.lines <$> B.getContents
    print $ length $ filter (odd . length) $ group $ sort as
