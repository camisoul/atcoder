import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    as <- replicateM n $ do
        [l, r] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        return $ r - l + 1
    print $ sum as
