import Control.Monad
import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c, d, e, f] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ toStr $ maximumBy (\x y -> compare (dense x) (dense y)) $ solve (a * 100) (b * 100) c d e f
    where
        toStr s = show (fst s) ++ " " ++ show (snd s)
        dense (w, p) = fromIntegral p / fromIntegral w :: Double
        solve a b c d e f = do
            i <- [0..30]
            guard (i * a <= f)
            j <- [0..30]
            guard (i + j > 0)
            let g = i * a + j * b
            guard (g <= f)
            let h = min ((g * e) `div` 100) (f - g)
            k <- [0..100]
            guard (c * k <= h)
            l <- [0..100]
            let t = c * k + d * l
            guard (t <= h)
            return (g + t, t)
