import Control.Monad
import Control.Monad.Primitive (PrimState)
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, m] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    mv <- MV.replicate n 0 :: IO (MV.MVector (PrimState IO) Int)
    replicateM_ m $ do
        [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        MV.unsafeModify mv (+1) (a - 1)
        MV.unsafeModify mv (+1) (b - 1)
    v <- V.unsafeFreeze mv
    putStr $ unlines $ map show $ V.toList v
