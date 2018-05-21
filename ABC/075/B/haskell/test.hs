import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.Array.IO
import Data.Char

main :: IO ()
main = do
    [h, w] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    ary <- newArray ((0, 0), (w + 1, h + 1)) 0 :: IO (IOUArray (Int, Int) Int)
    forM_ [1..h] $ \j -> do
        forM_ [1..w] $ \i -> do
            c <- getChar
            when (c == '#') $ do
                mapM_ (modify ary) [
                      (i - 1, j - 1) , (i - 1, j) , (i - 1 , j + 1), (i, j - 1)
                    , (i, j + 1) , (i + 1, j - 1) , (i + 1, j) , (i + 1, j + 1)]
                writeArray ary (i, j) 9
        getChar
    forM_ [1..h] $ \j -> do
        forM_ [1..w] $ \i -> do
            n <- readArray ary (i, j)
            putChar $ if n >= 9 then '#' else intToDigit n
        putChar '\n'
    where
        modify ary (i, j) = do
            n <- readArray ary (i, j)
            writeArray ary (i, j) (n + 1)
