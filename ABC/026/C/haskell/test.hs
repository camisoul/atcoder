import Data.List
import Control.Monad

main :: IO ()
main = do
    print $ map (\(x:xs) -> map snd xs) $ reverse $ groupBy (\a b -> fst a == fst b) $ sort $ zipWith (\x y -> (x, y)) [0..6] [0..6] ++ zipWith (\x y -> (x, y)) [1,2,3,3,2] [2..6]
    print "ok"
