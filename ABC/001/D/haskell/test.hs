import Control.Monad
import Control.Monad.Primitive (PrimState)
import Data.IORef
import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Unboxed as V
import qualified Data.Vector.Unboxed.Mutable as MV

-- いもす法。UnboxedなVectorの更新
setTime :: MV.MVector (PrimState IO) Int -> Int -> Int -> IO ()
setTime mv s e = do
    let st = s `div` 5 * 5
        es = (e + 5 - 1) `div` 5 * 5
        et = if es `mod` 100 == 60 then es + 40 else es
    MV.modify mv (+ 1) st
    MV.modify mv (subtract 1) (et + 1)

printTime :: V.Vector Int -> IO ()
printTime v = do
    flag <- newIORef False
    iter v $ \i a -> do
        f <- readIORef flag
        when (not f && a > 0) $ do
            putStr $ pad i ++ "-"
            writeIORef flag True
        when (f && a == 0) $ do
            putStrLn $ pad (i - 1)
            writeIORef flag False
    where
        iter = flip V.imapM_
        pad0 n s
            | n <= length s = s
            | otherwise = '0' : pad0 (n - 1) s
        pad s = pad0 4 $ show s

main :: IO ()
main = do
    mv <- MV.replicate (2400 + 2) 0
    h <- readLn
    replicateM_ h $ do
        -- 高速な文字列読み取りにはData.ByteString.Char8を利用する
        [s,e] <- map (fst . fromJust . B.readInt) . B.split '-' <$> B.getLine
        setTime mv s e
    v <- V.unsafeFreeze mv
    printTime $ V.scanl1 (+) v
