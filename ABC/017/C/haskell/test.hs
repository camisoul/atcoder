import Control.Monad (replicateM_)
import Data.IORef (IORef, newIORef, readIORef, modifyIORef)
import Control.Monad.Primitive (PrimState)
import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as C
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV

-- ほぼ手続き型言語
-- Haskellっぽい書き方を知りたい

main :: IO ()
main = do
    -- 高速な数値の読み取り
    [n,m] <- map (fst . fromJust . C.readInt) . C.words <$> C.getLine
    -- 合計得点
    t <- newIORef 0 :: IO (IORef Int)
    -- Vectorの定義
    mv <- MV.replicate (m + 1) 0 :: IO (MV.MVector (PrimState IO) Int)
    -- l-1番目に得点を加え、r番目から得点を引く
    replicateM_ n $ do
        [l,r,s] <- map (fst . fromJust . C.readInt) . C.words <$> C.getLine
        -- 高速な配列の書き換え
        MV.unsafeModify mv (+ s) (l - 1)
        MV.unsafeModify mv (subtract s) r
        -- 合計点を加算
        modifyIORef t (+ s)
    -- コピーを作らない。mvは使えなくなる
    xv <- V.unsafeFreeze mv
    total <- readIORef t
    -- 部分和を取り、合計から最後を除いた最小値を引いたものが答えになる
    print $ total - V.minimum (V.init $ V.scanl1 (+) xv)
