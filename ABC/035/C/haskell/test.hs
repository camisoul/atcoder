import Data.Maybe (fromJust)
import Control.Monad (replicateM_)
import Control.Monad.Primitive (PrimState)
import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV

main :: IO ()
main = do
    [n,q] <- map read . words <$> getLine :: IO [Int]
    mv <- MV.replicate (n + 1) 0 :: IO (MV.MVector (PrimState IO) Int)
    replicateM_ q $ do
        [l,r] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
        MV.unsafeModify mv (+1) (l - 1)
        MV.unsafeModify mv (subtract 1) r
    xv <- V.unsafeFreeze mv
    V.mapM_ (putStr . show) $ V.map (`mod` 2) $ V.init $ V.scanl1 (+) xv
    putStrLn ""
