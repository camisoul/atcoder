import Data.Maybe (fromJust)
import Control.Monad (replicateM_)
import Control.Monad.Primitive (PrimState)
import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV

main :: IO ()
main = do
    [n,t] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    mv <- MV.replicate 1111111 0 :: IO (MV.MVector (PrimState IO) Int)
    replicateM_ n $ do
        a <- fst . fromJust . B.readInt <$> B.getLine
        MV.unsafeModify mv (+1) a
        MV.unsafeModify mv (subtract 1) (a + t)
    xv <- V.unsafeFreeze mv
    print $ V.length $ V.filter (> 0) $ V.prescanl (+) 0 xv
