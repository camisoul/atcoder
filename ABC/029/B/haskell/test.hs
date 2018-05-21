main :: IO ()
main = print =<< length . filter (\s -> 'r' `elem` s) . lines <$> getContents
