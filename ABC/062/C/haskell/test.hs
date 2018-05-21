import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

calc :: Int -> Int -> Int
calc width height
    | height `mod` 3 == 0 = 0
    | width  `mod` 3 == 0 = 0
    | otherwise = minimum $ diff width height (width `div` 2)
    where
        diff _ _ 0 = [width]
        diff w h n =
            let r1 = n * h
                r2 = (w - n) * (h `div` 2)
                r3 = (w - n) * (h - h `div` 2)
                rr = [r1, r2, r3]
            in (maximum rr - minimum rr) : diff w h (n - 1)

main :: IO ()
main = do
    [h, w] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ min (calc h w) (calc w h)
