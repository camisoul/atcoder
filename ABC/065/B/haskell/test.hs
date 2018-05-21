import Control.Monad
import Control.Monad.Primitive (PrimState)
import qualified Data.Vector.Unboxed.Mutable as MV
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

type Vec = MV.MVector (PrimState IO)

-- 全行IOモナドじゃなきゃダメ
solve :: Vec Int -> Vec Bool -> Int -> Int -> IO (Int, Int)
solve mva mvb i count = do
    next <- MV.unsafeRead mva i
    if next == 1
        then return (next, count)
        else do
            b <- MV.unsafeRead mvb next
            if b
                then return (next, count)
                else do
                    MV.unsafeWrite mvb next True
                    solve mva mvb next (count + 1)
main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    mva <- MV.unsafeNew n :: IO (Vec Int)           -- 番号格納用
    mvb <- MV.replicate n False :: IO (Vec Bool)    -- 一度でも押したか
    forM_ [0..(n - 1)] $ \i -> do
        a <- fst . fromJust . B.readInt <$> B.getLine
        MV.unsafeWrite mva i (a - 1)
    (stop, count) <- solve mva mvb 0 1
    print $ if stop == 1 then count else -1
