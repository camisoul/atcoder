main :: IO ()
main = interact $ unlines . concatMap (replicate 2) . tail . lines
