main :: IO ()
main = (++ "pp") <$> getLine >>= putStrLn
