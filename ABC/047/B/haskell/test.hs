import Control.Monad
import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as B
import Data.IORef

main :: IO ()
main = do
    [w, h, n] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    as <- mapM newIORef [0, w, 0, h]
    replicateM_ n $ do
        [x, y, a] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        bs <- mapM readIORef as
        let i = a - 1
            f = [max, min] !! (i `mod` 2)
            j = [x, y] !! (i `div` 2)
        writeIORef (as !! i) (f (bs !! i) j)
    [x1, x2, y1, y2] <- mapM readIORef as
    print $ max 0 (x2 - x1) * max 0 (y2 - y1)
