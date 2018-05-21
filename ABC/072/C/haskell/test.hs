import Control.Monad.Primitive (PrimState)
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    vs <- V.fromList . map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    -- 最大値と最小値を求めてメモリ節約してもしなくても速度は変わらず
    -- スペースがちょっとだけ節約される程度
    let vmin = V.minimum vs
        vmax = V.maximum vs
    mv <- MV.replicate (vmax - vmin + 3) 0 :: IO (MV.MVector (PrimState IO) Int)
    -- unsafeModifyを3回やるよりzipWith3で計算したほうが速かった
    V.forM_ vs $ \i -> MV.unsafeModify mv succ (i + 1 - vmin)
    v <- V.unsafeFreeze mv
    let v1 = v
        v2 = V.tail v1
        v3 = V.tail v2
    print $ V.maximum $ V.zipWith3 (\x y z -> x + y + z) v1 v2 v3
