import Control.Monad (replicateM_)
import Control.Monad.Primitive (PrimState)
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV

-- メモリ使用量を抑えたプログラム
-- 文字列入力の処理がオーバーヘッドになってるかもしれない

main :: IO ()
main = do
    n <- readLn :: IO Int
    -- Unbox.MutableなVectorを0で初期化
    mv <- MV.replicate 1000002 0 :: IO (MV.MVector (PrimState IO) Int)
    replicateM_ n $ do
        -- これもっと高速化できないか
        [a,b] <- map read . words <$> getLine :: IO [Int]
        MV.unsafeModify mv (+1) a
        MV.unsafeModify mv (subtract 1) (b + 1)
    -- unsafeFreezeはデータをそのまま利用する
    -- データは更新できなくなるが、メモリ使用量が半減する
    xv <- V.unsafeFreeze mv
    print $ V.maximum $ V.prescanl (+) 0 xv
