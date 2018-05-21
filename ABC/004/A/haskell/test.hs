main :: IO ()
main = (*2) <$> readLn >>= print
