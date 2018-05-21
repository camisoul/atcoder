main :: IO ()
main = filter (`notElem` "aiueo") <$> getLine >>= putStrLn
