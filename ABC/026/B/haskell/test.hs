import Data.List
import Control.Monad

main :: IO ()
main = do
    n <- readLn
    rs <- replicateM n readLn :: IO [Double]
    print $ foldl (\a (x, y) -> a + area x - area y) 0 (split' (sortBy (flip compare) rs))
    where
        split' [] = []
        split' [x] = [(x,0)]
        split' (x:y:xs) = (x,y) : split' xs
        area p = p ** 2 * pi
