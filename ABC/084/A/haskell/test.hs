main :: IO ()
main = readLn >>= print . (-) 48
