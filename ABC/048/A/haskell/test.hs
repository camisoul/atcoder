main :: IO ()
main = putStrLn =<< map head . words <$> getLine
