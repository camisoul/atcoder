import Control.Monad
import Control.Monad.Primitive (PrimState)
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, k] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    mv <- MV.replicate 100002 0 :: IO (MV.MVector (PrimState IO) Int)
    replicateM_ n $ do
        [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        MV.unsafeModify mv (+ b) (a - 1)
    v <- V.unsafeFreeze mv
    print $ fromJust $ V.findIndex (>= k) (V.scanl' (+) 0 v)
