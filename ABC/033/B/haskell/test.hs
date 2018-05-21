import Data.List
import Control.Monad

main :: IO ()
main = do
    n <- readLn :: IO Int
    d <- replicateM n $ do
        [s,p] <- words <$> getLine
        return (s, read p) :: IO (String, Int)
    let ss = map fst d
        ps = map snd d
        t = sum ps `div` 2
    putStrLn $ case findIndex (> t) ps of
                    Just i  -> ss !! i
                    Nothing -> "atcoder"
