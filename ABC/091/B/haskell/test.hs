import Control.Monad
import Data.List

main :: IO ()
main = do
    n <- readLn
    as <- replicateM n getLine
    m <- readLn
    bs <- replicateM m getLine
    let cs = map length $ group $ sort $ foldl (flip delete) as bs
    print $ if null cs then 0 else maximum cs
