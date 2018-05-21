import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = print =<< length . nub . tail .
    map (fst . fromJust . B.readInt) . B.lines <$> B.getContents
