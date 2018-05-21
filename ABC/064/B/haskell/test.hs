import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- fst . fromJust . B.readInt <$> B.getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ maximum as - minimum as
