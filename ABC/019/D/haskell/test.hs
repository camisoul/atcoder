import Control.Monad
import System.IO
import Data.IORef (IORef, newIORef, readIORef, writeIORef)

-- 100/100

query :: Int -> Int -> IORef Int -> IO (Int, Int)
query x y a = do
    putStrLn $ "? " ++ show x ++ " " ++ show y
    hFlush stdout
    b <- readLn
    aa <- readIORef a
    return (aa,b)

main :: IO ()
main = do
    n <- readLn
    a <- newIORef 0
    k <- newIORef 1
    forM_ [1..(n - 1)] $ \i -> do
        (x,y) <- query 1 (i + 1) a
        when (x < y) $ do
            writeIORef k (i + 1)
            writeIORef a y
    kk <- readIORef k
    forM_ [1..(n - 1)] $ \i ->
        unless (i + 1 == kk) $ do
            (x, y) <- query kk (i + 1) a
            writeIORef a (max x y)
    ans <- readIORef a
    putStrLn $ "! " ++ show ans
