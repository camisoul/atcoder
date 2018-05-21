import Control.Arrow ((&&&))
import Data.List (group, sort)

main :: IO ()
main = do
    n <- readLn :: IO Int
    ss <- mapM (const getLine) [1..n]
    putStrLn $ snd $ maximum $ map (length &&& head) $ group $ sort ss
