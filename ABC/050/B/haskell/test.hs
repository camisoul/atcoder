import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    ts <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    m <- fst . fromJust . B.readInt <$> B.getLine
    let s = sum ts
    replicateM_ m $ do
        [p, x] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        print $ s - ts !! (p - 1) + x
